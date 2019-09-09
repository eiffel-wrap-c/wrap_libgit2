-- enum wrapper
class GIT_SUBMODULE_UPDATE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_submodule_update_checkout or a_value = git_submodule_update_rebase or a_value = git_submodule_update_merge or a_value = git_submodule_update_none or a_value = git_submodule_update_default
		end

	git_submodule_update_checkout: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_UPDATE_CHECKOUT"
		end

	git_submodule_update_rebase: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_UPDATE_REBASE"
		end

	git_submodule_update_merge: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_UPDATE_MERGE"
		end

	git_submodule_update_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_UPDATE_NONE"
		end

	git_submodule_update_default: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_UPDATE_DEFAULT"
		end

end
