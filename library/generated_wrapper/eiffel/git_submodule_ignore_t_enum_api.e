-- enum wrapper
class GIT_SUBMODULE_IGNORE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_submodule_ignore_unspecified or a_value = git_submodule_ignore_none or a_value = git_submodule_ignore_untracked or a_value = git_submodule_ignore_dirty or a_value = git_submodule_ignore_all
		end

	git_submodule_ignore_unspecified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_IGNORE_UNSPECIFIED"
		end

	git_submodule_ignore_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_IGNORE_NONE"
		end

	git_submodule_ignore_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_IGNORE_UNTRACKED"
		end

	git_submodule_ignore_dirty: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_IGNORE_DIRTY"
		end

	git_submodule_ignore_all: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_IGNORE_ALL"
		end

end
