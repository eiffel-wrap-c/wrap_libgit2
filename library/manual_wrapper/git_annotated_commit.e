note
	description: "Object representing annotated functions"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Annotated functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/annotated", "protocol=uri"

class
	GIT_ANNOTATED_COMMIT

inherit

	GIT_ANNOTATED_COMMIT_API
		rename
			git_annotated_commit_from_ref as git_annotated_commit_from_ref_api,
			git_annotated_commit_ref as git_annotated_commit_ref_api
		end

feature -- Acceess

	git_annotated_commit_from_ref (a_out: GIT_ANNOTATED_COMMIT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API): INTEGER
		note
			EIS: "name=git_annotated_commit_from_ref", "src=https://libgit2.org/libgit2/#v1.0.0/group/annotated/git_annotated_commit_from_ref", "protocol=uri"
		local
			l_ptr: POINTER
		do
			Result := c_git_annotated_commit_from_ref ($l_ptr, repo.item, ref.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

	git_annotated_commit_ref (commit: GIT_ANNOTATED_COMMIT_STRUCT_API): detachable STRING
		note
			EIS: "name=git_annotated_commit_ref", "src=https://libgit2.org/libgit2/#v1.0.0/group/annotated/git_annotated_commit_ref", "protocol=uri"
		local
			l_ptr: POINTER
		do
			l_ptr := git_annotated_commit_ref_api (commit)
			if l_ptr /= default_pointer then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			instance_free: class
		end


end
