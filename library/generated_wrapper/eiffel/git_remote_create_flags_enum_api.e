-- enum wrapper
class GIT_REMOTE_CREATE_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_remote_create_skip_insteadof or a_value = git_remote_create_skip_default_fetchspec
		end

	git_remote_create_skip_insteadof: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_CREATE_SKIP_INSTEADOF"
		end

	git_remote_create_skip_default_fetchspec: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC"
		end

end
