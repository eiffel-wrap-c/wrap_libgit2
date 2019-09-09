-- enum wrapper
class GIT_REFERENCE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_reference_invalid or a_value = git_reference_direct or a_value = git_reference_symbolic or a_value = git_reference_all
		end

	git_reference_invalid: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REFERENCE_INVALID"
		end

	git_reference_direct: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REFERENCE_DIRECT"
		end

	git_reference_symbolic: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REFERENCE_SYMBOLIC"
		end

	git_reference_all: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REFERENCE_ALL"
		end

end
