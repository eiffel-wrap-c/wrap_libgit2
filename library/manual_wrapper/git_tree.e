note
	description: "Objects representing tree functions"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=Tree functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/tree", "protocol=uri"

class
	GIT_TREE

inherit
	GIT_TREE_API
		rename
			git_tree_lookup as git_tree_lookup_api
		end

feature -- Access

	git_tree_lookup (a_out: GIT_TREE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API): INTEGER
		note
			eis: "name=git_tree_lookup", "src=https://libgit2.org/libgit2/#v1.0.0/group/tree/git_tree_lookup", "protocol=uri"
		local
			l_ptr: POINTER
		do
			Result := c_git_tree_lookup ($l_ptr, repo.item, id.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

end
