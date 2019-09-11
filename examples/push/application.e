note
	description: "[
		libgit2 "push" example - shows how to git push <remote> <branch>
		]"

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
			create git_repository
			path := "."
			remote := ""
			branch := ""

			make_command_line_parser
			process_arguments
			push_repository
		end


feature -- Intiialize Repository

	push_repository
		local
			ini: INTEGER
			repo: GIT_REPOSITORY_STRUCT_API
			iniopts: GIT_REPOSITORY_INIT_OPTIONS_STRUCT_API
			l_remote: GIT_REMOTE_STRUCT_API
			git_remote: GIT_REMOTE
			refspec: STRING
			l_options: GIT_PUSH_OPTIONS_STRUCT_API
			a_array: GIT_STRARRAY_STRUCT_API
		do
			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			print ("%N Intializing Libgit2")
			create repo.make

			if git_repository.git_repository_open (repo, (create {PATH}.make_from_string (path)).out) < 0 then
				print ("%NCould not open repository")
				{EXCEPTIONS}.die (1)
			end


				-- get the remote
			create l_remote.make
			create git_remote
			if git_remote.git_remote_lookup (l_remote, repo, remote) < 0 then
				print ("%NCould not get remote repository " + remote)
				{EXCEPTIONS}.die (1)
			end

				-- connect to remote
			if git_remote.git_remote_connect (l_remote, {GIT_DIRECTION_ENUM_API}.git_direction_push, Void, Void, Void) < 0 then
				print ("%NCould not connect to remote repository " + remote)
				{EXCEPTIONS}.die (1)
			end


				-- add a push refspec
			create refspec.make_from_string ("refs/heads/")
			refspec.append (branch)

			if git_remote.git_remote_add_push (repo, remote, refspec + ":" + refspec) < 0 then
				print ("%NCould not add push ")
				{EXCEPTIONS}.die (1)
			end

				-- configure options
			create l_options.make
			if git_remote.git_push_init_options (l_options, 1) < 0 then
				print ("%NCould not configure options ")
				{EXCEPTIONS}.die (1)
			end

			create a_array.make
			init_array (a_array, {ARRAY [STRING]}<<refspec + ":" + refspec>>)

				-- do the push
			if git_remote.git_remote_upload (l_remote, a_array, l_options) < 0 then
				print ("%NCould not do push ")
				{EXCEPTIONS}.die (1)
			end

			git_repository.git_repository_free (repo)
			git_remote.git_remote_free (l_remote)

		end

	init_array (a_array: GIT_STRARRAY_STRUCT_API; l_array: ARRAY [STRING])
		local
			mp: MANAGED_POINTER
		do
			create mp.make (l_array.count * {PLATFORM}.pointer_bytes)
			across l_array as ic  loop
				mp.put_pointer ((create {C_STRING}.make (ic.item)).item, (ic.cursor_index - 1) * {PLATFORM}.pointer_bytes )
			end
			a_array.set_count (l_array.count)
			a_array.set_strings (mp.item)
		end



--bool push(git_repository *repository)
-- {
--     // get the remote.
--     git_remote* remote = NULL;
--     git_remote_lookup( &remote, repository, "origin" );

--     // connect to remote
--     git_remote_connect( remote, GIT_DIRECTION_PUSH )

--     // add a push refspec
--     git_remote_add_push( remote, "refs/heads/master:refs/heads/master" );

--     // configure options
--     git_push_options options;
--     git_push_init_options( &options, GIT_PUSH_OPTIONS_VERSION );

--     // do the push
--     git_remote_upload( remote, NULL, &options );

--     git_remote_free( remote );
--     return true;
-- }


feature	{NONE} -- Process Arguments


	process_arguments
			-- Process command line arguments
		local
			shared_value: STRING
		do
			if match_long_option ("git-dir") then
				if is_next_option_long_option and then has_next_option_value then
					create path.make_from_string (next_option_value)
					consume_option
				else
					print("%N Missing command line parameter --git-dir=<dir>")
					usage
					{EXCEPTIONS}.die (1)
				end
			end
			if  has_next_option and then not is_next_option_long_option then
				create remote.make_from_string (next_option)
				consume_option
			else
				print("%N Missing command line parameter <remote>%N")
				usage
				{EXCEPTIONS}.die (1)
			end
			if  has_next_option and then not is_next_option_long_option then
				create branch.make_from_string (next_option)
				consume_option
			else
				print("%N Missing command line parameter <branch>%N")
				usage
				{EXCEPTIONS}.die (1)
			end
		end

	usage
		local
			str: STRING
		do
			str := "[
				%N
				git_push [--git-dir=<directory>]
				<remote>
				<branch>
				]"

			print("%N")
			print (str)
		end

feature -- Options

	path: STRING
	remote: STRING
	branch: STRING
	git_repository: LIBGIT2_REPOSITORY

end
