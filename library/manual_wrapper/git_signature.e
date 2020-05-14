note
	description: "Object represint signature functions"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=Signature functions", "src=https://libgit2.org/libgit2/#HEAD/group/signature", "protocol=uri"

class
	GIT_SIGNATURE

inherit

	GIT_SIGNATURE_API
		rename
			git_signature_default as git_signature_default_api
		end

feature -- Access

	git_signature_default (a_out: GIT_SIGNATURE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API): INTEGER
			-- Create a new action signature with default user and now timestamp.
		note
			eis: "name=git_signature_default", "src=https://libgit2.org/libgit2/#HEAD/group/signature/git_signature_default", "protocol=uri"
		local
			l_ptr: POINTER
		do
			Result := c_git_signature_default ($l_ptr, repo.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end


end
