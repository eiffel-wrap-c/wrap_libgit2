note
	description: "[
		libgit2  "describe" example - shows how to describe commits.g
		]"
	EIS: "name=git describe", "src=https://github.com/libgit2/libgit2/blob/master/examples/describe.c","protocol=uri"

class APPLICATION

inherit

	COMMAND_LINE_PARSER
		rename
			make as make_command_line_parser
		end

create
	make

feature {NONE} --Initialization

	make

		do

			make_command_line_parser
			process_arguments
			describe_options
		end


feature -- Describe

	describe_options
		local
			ini: INTEGER
			repo: GIT_REPOSITORY_STRUCT_API
			options: OPTIONS
		do
			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			debug
				print ("%NIntializing Libgit2%N")
			end

			create options.make
			create repo.make

			if {LIBGIT2_REPOSITORY}.git_repository_open_ext (repo, ".", 0, Void) < 0 then
				print ("%NCould not open repository")
				{EXCEPTIONS}.die (1)
			end

			describe (repo, options)

			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_shutdown
		end

--static void do_describe(git_repository *repo, describe_options *opts)
--{
--  if (opts->commit_count == 0)
--    do_describe_single(repo, opts, NULL);
--  else
--  {
--    size_t i;
--    for (i = 0; i < opts->commit_count; i++)
--      do_describe_single(repo, opts, opts->commits[i]);
--  }
--}



	describe (a_repo: GIT_REPOSITORY_STRUCT_API; a_options: OPTIONS)
		do
			if a_options.commit_count = 0 then
				describe_single (a_repo, a_options, Void)
			end
		end


--static void do_describe_single(git_repository *repo, describe_options *opts, const char *rev)
--{
--  git_object *commit;
--  git_describe_result *describe_result;
--  git_buf buf = { 0 };

--  if (rev) {
--    check_lg2(git_revparse_single(&commit, repo, rev),
--      "Failed to lookup rev", rev);

--    check_lg2(git_describe_commit(&describe_result, commit, &opts->describe_options),
--      "Failed to describe rev", rev);
--  }
--  else
--    check_lg2(git_describe_workdir(&describe_result, repo, &opts->describe_options),
--      "Failed to describe workdir", NULL);

--  check_lg2(git_describe_format(&buf, describe_result, &opts->format_options),
--      "Failed to format describe rev", rev);

--  printf("%s\n", buf.ptr);
--}	


	describe_single (a_repo: GIT_REPOSITORY_STRUCT_API; a_options: OPTIONS; a_rev: detachable STRING)
		local
			describe_result: GIT_DESCRIBE_RESULT_STRUCT_API
			buf: GIT_BUF_STRUCT_API
		do
			if attached a_rev then

			else
				create describe_result.make
				if {GIT_DESCRIBE}.git_describe_workdir (describe_result, a_repo, a_options.describe_options) < 0 then
					print ("%NFailed to describe workdir")
					{EXCEPTIONS}.die (1)
				end
				create buf.make
				if {GIT_DESCRIBE}.git_describe_format (buf, describe_result, a_options.format_options) < 0 then
					print ("%NFailed to describe rev")
				end
				if attached buf.ptr as l_string then
					print (l_string)
				end

			end
		end

feature	{NONE} -- Process Arguments


	process_arguments
			-- Process command line arguments
		do
			if match_long_option ("git-dir") then
				if is_next_option_long_option and then has_next_option_value then
					consume_option
				else
					print("%N Missing command line parameter --git-dir=<dir>")
					usage
					{EXCEPTIONS}.die (1)
				end
			end

			if match_long_option ("dry-run") then
				consume_option
			end

			if match_long_option ("verbose") then
				consume_option
			end

			if match_long_option ("update") then
				consume_option
			end

			from
				if  has_next_option and then not is_next_option_long_option then
					consume_option
				else
					print("%N Missing command line parameter <file>%N")
					usage
					{EXCEPTIONS}.die (1)
				end
			until
				not has_next_option
			loop
				if has_next_option and then not is_next_option_long_option then
					consume_option
				else
					print ("%NUnexpected parameter%N")
					usage
					{EXCEPTIONS}.die (1)
				end
			end
		end

	usage
		local
			str: STRING
		do
			str := "[
				git_describe [--git-dir] [options] file [file] 
					[--git-dir]: use the following git repository. 
					[--dry-run]: dry-run
					[--verbose]: be verbose
					[--update]: update tracked files
					<files>
				]"

			print("%N")
			print (str)
			print("%N")
		end

end
