note
	description: "Object that represents the parsed command line options"
	date: "$Date$"
	revision: "$Revision$"

class
	OPTIONS

create
	make


feature -- Initialization

	make
		local
			git_describe: GIT_DESCRIBE_API
			err: INTEGER
		do
			create commits.make_empty
			create describe_options.make
			create format_options.make
			create git_describe
			err := git_describe.git_describe_init_options (describe_options, 1)
			err := git_describe.git_describe_init_format_options (format_options, 1)
		end

feature -- Access

	commits: STRING

	commit_count: INTEGER

	describe_options: GIT_DESCRIBE_OPTIONS_STRUCT_API

	format_options: GIT_DESCRIBE_FORMAT_OPTIONS_STRUCT_API

end
