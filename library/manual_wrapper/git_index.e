note
	description: "Object representing index functions"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"name=Index functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/index", "protocol=uri"

class
	GIT_INDEX

inherit

	GIT_INDEX_API
		rename
			git_index_write_tree as git_index_write_tree_api
		end


feature -- Access

	git_index_write_tree (a_out: GIT_OID_STRUCT_API; index: GIT_INDEX_STRUCT_API): INTEGER
		note
			EIS:"name=git_index_write_tree", "src=https://libgit2.org/libgit2/#v1.0.0/group/index/git_index_write_tree", "protocol=uri"
		local
			l_ptr: POINTER
		do
			Result := c_git_index_write_tree ($l_ptr, index.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

end
