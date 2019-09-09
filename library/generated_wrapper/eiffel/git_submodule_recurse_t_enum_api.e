-- enum wrapper
class GIT_SUBMODULE_RECURSE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_submodule_recurse_no or a_value = git_submodule_recurse_yes or a_value = git_submodule_recurse_ondemand
		end

	git_submodule_recurse_no: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_RECURSE_NO"
		end

	git_submodule_recurse_yes: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_RECURSE_YES"
		end

	git_submodule_recurse_ondemand: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_RECURSE_ONDEMAND"
		end

end
