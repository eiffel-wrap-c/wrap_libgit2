note
	description: "Summary description for {GIT_REVPARSE}."
	date: "$Date$"
	revision: "$Revision$"
	EIS:"name=Revparse functions", "src=https://libgit2.org/libgit2/#HEAD/group/revparse", "protocol=uri"

class
	GIT_REVPARSE

inherit

	GIT_REVPARSE_API
		rename
			git_revparse_single as git_revparse_single_api,
			git_revparse_ext as git_revparse_ext_api
		end

feature -- Access

	git_revparse_single (a_out: GIT_OBJECT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; spec: STRING): INTEGER
		local
			spec_c_string: C_STRING
			l_ptr: POINTER
		do
			create spec_c_string.make (spec)
			Result := c_git_revparse_single ($l_ptr, repo.item, spec_c_string.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		end


	git_revparse_ext (object_out: GIT_OBJECT_STRUCT_API; reference_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; spec: detachable STRING): INTEGER
			-- Find a single object and intermediate reference by a revision string.
		local
			spec_c_string: C_STRING
			l_obj: POINTER
			l_ref: POINTER
		do
			create spec_c_string.make (spec)
			Result := c_git_revparse_ext ($l_obj, $l_ref, repo.item, spec_c_string.item)
			if l_obj /= default_pointer then
				object_out.make_by_pointer (l_obj)
			end
			if l_ref /= default_pointer then
				reference_out.make_by_pointer (l_ref)
			end
		end

end
