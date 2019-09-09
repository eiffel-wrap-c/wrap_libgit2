-- enum wrapper
class GIT_STATUS_SHOW_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_status_show_index_and_workdir or a_value = git_status_show_index_only or a_value = git_status_show_workdir_only
		end

	git_status_show_index_and_workdir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_SHOW_INDEX_AND_WORKDIR"
		end

	git_status_show_index_only: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_SHOW_INDEX_ONLY"
		end

	git_status_show_workdir_only: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_SHOW_WORKDIR_ONLY"
		end

end
