-- enum wrapper
class GIT_SUBMODULE_STATUS_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_submodule_status_in_head or a_value = git_submodule_status_in_index or a_value = git_submodule_status_in_config or a_value = git_submodule_status_in_wd or a_value = git_submodule_status_index_added or a_value = git_submodule_status_index_deleted or a_value = git_submodule_status_index_modified or a_value = git_submodule_status_wd_uninitialized or a_value = git_submodule_status_wd_added or a_value = git_submodule_status_wd_deleted or a_value = git_submodule_status_wd_modified or a_value = git_submodule_status_wd_index_modified or a_value = git_submodule_status_wd_wd_modified or a_value = git_submodule_status_wd_untracked
		end

	git_submodule_status_in_head: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_IN_HEAD"
		end

	git_submodule_status_in_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_IN_INDEX"
		end

	git_submodule_status_in_config: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_IN_CONFIG"
		end

	git_submodule_status_in_wd: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_IN_WD"
		end

	git_submodule_status_index_added: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_INDEX_ADDED"
		end

	git_submodule_status_index_deleted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_INDEX_DELETED"
		end

	git_submodule_status_index_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_INDEX_MODIFIED"
		end

	git_submodule_status_wd_uninitialized: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_UNINITIALIZED"
		end

	git_submodule_status_wd_added: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_ADDED"
		end

	git_submodule_status_wd_deleted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_DELETED"
		end

	git_submodule_status_wd_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_MODIFIED"
		end

	git_submodule_status_wd_index_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED"
		end

	git_submodule_status_wd_wd_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_WD_MODIFIED"
		end

	git_submodule_status_wd_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_SUBMODULE_STATUS_WD_UNTRACKED"
		end

end
