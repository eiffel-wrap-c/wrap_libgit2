-- enum wrapper
class GIT_REPOSITORY_INIT_MODE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_repository_init_shared_umask or a_value = git_repository_init_shared_group or a_value = git_repository_init_shared_all
		end

	git_repository_init_shared_umask: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_SHARED_UMASK"
		end

	git_repository_init_shared_group: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_SHARED_GROUP"
		end

	git_repository_init_shared_all: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_SHARED_ALL"
		end

end
