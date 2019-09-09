-- enum wrapper
class GIT_FILEMODE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_filemode_unreadable or a_value = git_filemode_tree or a_value = git_filemode_blob or a_value = git_filemode_blob_executable or a_value = git_filemode_link or a_value = git_filemode_commit
		end

	git_filemode_unreadable: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_UNREADABLE"
		end

	git_filemode_tree: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_TREE"
		end

	git_filemode_blob: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_BLOB"
		end

	git_filemode_blob_executable: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_BLOB_EXECUTABLE"
		end

	git_filemode_link: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_LINK"
		end

	git_filemode_commit: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FILEMODE_COMMIT"
		end

end
