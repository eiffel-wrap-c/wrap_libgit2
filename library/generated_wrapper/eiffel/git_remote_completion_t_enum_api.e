-- enum wrapper
class GIT_REMOTE_COMPLETION_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_remote_completion_download or a_value = git_remote_completion_indexing or a_value = git_remote_completion_error
		end

	git_remote_completion_download: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_COMPLETION_DOWNLOAD"
		end

	git_remote_completion_indexing: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_COMPLETION_INDEXING"
		end

	git_remote_completion_error: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_COMPLETION_ERROR"
		end

end
