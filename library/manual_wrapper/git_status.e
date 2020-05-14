note
	description: "Object represneting status functions"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Status functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/status", "protocol=uri"

class
	GIT_STATUS

inherit

	GIT_STATUS_API
		rename
			git_status_list_new as git_status_list_new_api
		end

feature -- Access

	git_status_list_new (a_out: GIT_STATUS_LIST_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; opts: GIT_STATUS_OPTIONS_STRUCT_API): INTEGER
		note
			eis: "name=git_status_list_new", "src=https://libgit2.org/libgit2/#v1.0.0/group/status/git_status_list_new", "protocol=uri"
		local
			l_ptr: POINTER
		do
			Result := c_git_status_list_new ($l_ptr, repo.item, opts.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end


end
