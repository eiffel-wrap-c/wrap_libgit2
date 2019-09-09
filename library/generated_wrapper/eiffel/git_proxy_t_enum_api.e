-- enum wrapper
class GIT_PROXY_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_proxy_none or a_value = git_proxy_auto or a_value = git_proxy_specified
		end

	git_proxy_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_PROXY_NONE"
		end

	git_proxy_auto: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_PROXY_AUTO"
		end

	git_proxy_specified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_PROXY_SPECIFIED"
		end

end
