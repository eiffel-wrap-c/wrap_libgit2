-- enum wrapper
class GIT_TREEWALK_MODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_treewalk_pre or a_value = git_treewalk_post
		end

	git_treewalk_pre: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_TREEWALK_PRE"
		end

	git_treewalk_post: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_TREEWALK_POST"
		end

end
