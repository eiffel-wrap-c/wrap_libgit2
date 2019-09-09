-- enum wrapper
class GIT_STATUS_OPT_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_status_opt_include_untracked or a_value = git_status_opt_include_ignored or a_value = git_status_opt_include_unmodified or a_value = git_status_opt_exclude_submodules or a_value = git_status_opt_recurse_untracked_dirs or a_value = git_status_opt_disable_pathspec_match or a_value = git_status_opt_recurse_ignored_dirs or a_value = git_status_opt_renames_head_to_index or a_value = git_status_opt_renames_index_to_workdir or a_value = git_status_opt_sort_case_sensitively or a_value = git_status_opt_sort_case_insensitively or a_value = git_status_opt_renames_from_rewrites or a_value = git_status_opt_no_refresh or a_value = git_status_opt_update_index or a_value = git_status_opt_include_unreadable or a_value = git_status_opt_include_unreadable_as_untracked
		end

	git_status_opt_include_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_INCLUDE_UNTRACKED"
		end

	git_status_opt_include_ignored: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_INCLUDE_IGNORED"
		end

	git_status_opt_include_unmodified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_INCLUDE_UNMODIFIED"
		end

	git_status_opt_exclude_submodules: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_EXCLUDE_SUBMODULES"
		end

	git_status_opt_recurse_untracked_dirs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS"
		end

	git_status_opt_disable_pathspec_match: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH"
		end

	git_status_opt_recurse_ignored_dirs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_RECURSE_IGNORED_DIRS"
		end

	git_status_opt_renames_head_to_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX"
		end

	git_status_opt_renames_index_to_workdir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR"
		end

	git_status_opt_sort_case_sensitively: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_SORT_CASE_SENSITIVELY"
		end

	git_status_opt_sort_case_insensitively: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY"
		end

	git_status_opt_renames_from_rewrites: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_RENAMES_FROM_REWRITES"
		end

	git_status_opt_no_refresh: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_NO_REFRESH"
		end

	git_status_opt_update_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_UPDATE_INDEX"
		end

	git_status_opt_include_unreadable: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_INCLUDE_UNREADABLE"
		end

	git_status_opt_include_unreadable_as_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED"
		end

end
