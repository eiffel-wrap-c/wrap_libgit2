-- enum wrapper
class GIT_CLONE_LOCAL_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_clone_local_auto or a_value = git_clone_local or a_value = git_clone_no_local or a_value = git_clone_local_no_links
		end

	git_clone_local_auto: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CLONE_LOCAL_AUTO"
		end

	git_clone_local: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CLONE_LOCAL"
		end

	git_clone_no_local: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CLONE_NO_LOCAL"
		end

	git_clone_local_no_links: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CLONE_LOCAL_NO_LINKS"
		end

end
