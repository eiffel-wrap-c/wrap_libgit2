-- enum wrapper
class GIT_REPOSITORY_OPEN_FLAG_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_repository_open_no_search or a_value = git_repository_open_cross_fs or a_value = git_repository_open_bare or a_value = git_repository_open_no_dotgit or a_value = git_repository_open_from_env
		end

	git_repository_open_no_search: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_OPEN_NO_SEARCH"
		end

	git_repository_open_cross_fs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_OPEN_CROSS_FS"
		end

	git_repository_open_bare: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_OPEN_BARE"
		end

	git_repository_open_no_dotgit: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_OPEN_NO_DOTGIT"
		end

	git_repository_open_from_env: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_OPEN_FROM_ENV"
		end

end
