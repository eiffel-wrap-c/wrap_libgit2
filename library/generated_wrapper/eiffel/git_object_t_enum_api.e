-- enum wrapper
class GIT_OBJECT_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_object_any or a_value = git_object_invalid or a_value = git_object_commit or a_value = git_object_tree or a_value = git_object_blob or a_value = git_object_tag or a_value = git_object_ofs_delta or a_value = git_object_ref_delta
		end

	git_object_any: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_ANY"
		end

	git_object_invalid: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_INVALID"
		end

	git_object_commit: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_COMMIT"
		end

	git_object_tree: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_TREE"
		end

	git_object_blob: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_BLOB"
		end

	git_object_tag: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_TAG"
		end

	git_object_ofs_delta: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_OFS_DELTA"
		end

	git_object_ref_delta: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OBJECT_REF_DELTA"
		end

end
