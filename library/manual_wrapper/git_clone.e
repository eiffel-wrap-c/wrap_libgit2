note
	description: "Object representing clone functions"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=clone functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/clone", "protocol=uri"

class
	GIT_CLONE

inherit

	GIT_CLONE_API
		rename
			git_clone as git_clone_api
		end


feature -- Access

	git_clone (a_out: GIT_REPOSITORY_STRUCT_API; url: STRING; local_path: STRING; options: detachable GIT_CLONE_OPTIONS_STRUCT_API): INTEGER
		note
			EIS:"name=git_clone", "src=https://libgit2.org/libgit2/#v1.0.0/group/clone/git_clone", "protocol=uri"
		local
			url_c_string: C_STRING
			local_path_c_string: C_STRING
			l_ptr: POINTER
			l_options: POINTER
		do
			if attached options then
				l_options := options.item
			end
			create url_c_string.make (url)
			create local_path_c_string.make (local_path)
			Result := c_git_clone ($l_ptr, url_c_string.item, local_path_c_string.item, l_options)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end


end
