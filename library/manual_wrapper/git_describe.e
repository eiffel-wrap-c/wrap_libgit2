note
	description: "Summary description for {GIT_DESCRIBE}."
	date: "$Date$"
	revision: "$Revision$"

class
	GIT_DESCRIBE

inherit

	GIT_DESCRIBE_API
		rename
			git_describe_init_options as git_describe_init_options_api,
			git_describe_workdir as git_describe_workdir_api,
			git_describe_format as git_describe_format_api
		end

feature -- Access

	git_describe_init_options (opts: GIT_DESCRIBE_OPTIONS_STRUCT_API; version: INTEGER): INTEGER
		local
			l_ptr: POINTER
		do
			Result := c_git_describe_init_options ($l_ptr, version)
			if l_ptr /= default_pointer then
				opts.make_by_pointer (l_ptr)
			end
		end

	git_describe_workdir (a_out: GIT_DESCRIBE_RESULT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; opts: GIT_DESCRIBE_OPTIONS_STRUCT_API): INTEGER
		local
			l_ptr: POINTER
		do
			Result := c_git_describe_workdir ($l_ptr, repo.item, opts.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		end

	git_describe_format (a_out: GIT_BUF_STRUCT_API; a_result: GIT_DESCRIBE_RESULT_STRUCT_API; opts: GIT_DESCRIBE_FORMAT_OPTIONS_STRUCT_API): INTEGER
		local
			l_ptr: POINTER
		do
			Result := c_git_describe_format ($l_ptr, a_result.item, opts.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		end


end
