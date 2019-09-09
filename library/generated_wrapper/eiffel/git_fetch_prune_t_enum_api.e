-- enum wrapper
class GIT_FETCH_PRUNE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_fetch_prune_unspecified or a_value = git_fetch_prune or a_value = git_fetch_no_prune
		end

	git_fetch_prune_unspecified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FETCH_PRUNE_UNSPECIFIED"
		end

	git_fetch_prune: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FETCH_PRUNE"
		end

	git_fetch_no_prune: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_FETCH_NO_PRUNE"
		end

end
