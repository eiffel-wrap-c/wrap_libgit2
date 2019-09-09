-- enum wrapper
class GIT_STATUS_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_status_current or a_value = git_status_index_new or a_value = git_status_index_modified or a_value = git_status_index_deleted or a_value = git_status_index_renamed or a_value = git_status_index_typechange or a_value = git_status_wt_new or a_value = git_status_wt_modified or a_value = git_status_wt_deleted or a_value = git_status_wt_typechange or a_value = git_status_wt_renamed or a_value = git_status_wt_unreadable or a_value = git_status_ignored or a_value = git_status_conflicted
		end

	git_status_current: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_CURRENT"
		end

	git_status_index_new: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_INDEX_NEW"
		end

	git_status_index_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_INDEX_MODIFIED"
		end

	git_status_index_deleted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_INDEX_DELETED"
		end

	git_status_index_renamed: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_INDEX_RENAMED"
		end

	git_status_index_typechange: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_INDEX_TYPECHANGE"
		end

	git_status_wt_new: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_NEW"
		end

	git_status_wt_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_MODIFIED"
		end

	git_status_wt_deleted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_DELETED"
		end

	git_status_wt_typechange: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_TYPECHANGE"
		end

	git_status_wt_renamed: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_RENAMED"
		end

	git_status_wt_unreadable: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_WT_UNREADABLE"
		end

	git_status_ignored: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_IGNORED"
		end

	git_status_conflicted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_CONFLICTED"
		end

end
