-- enum wrapper
class GIT_CHECKOUT_STRATEGY_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_checkout_none or a_value = git_checkout_safe or a_value = git_checkout_force or a_value = git_checkout_recreate_missing or a_value = git_checkout_allow_conflicts or a_value = git_checkout_remove_untracked or a_value = git_checkout_remove_ignored or a_value = git_checkout_update_only or a_value = git_checkout_dont_update_index or a_value = git_checkout_no_refresh or a_value = git_checkout_skip_unmerged or a_value = git_checkout_use_ours or a_value = git_checkout_use_theirs or a_value = git_checkout_disable_pathspec_match or a_value = git_checkout_skip_locked_directories or a_value = git_checkout_dont_overwrite_ignored or a_value = git_checkout_conflict_style_merge or a_value = git_checkout_conflict_style_diff3 or a_value = git_checkout_dont_remove_existing or a_value = git_checkout_dont_write_index or a_value = git_checkout_update_submodules or a_value = git_checkout_update_submodules_if_changed
		end

	git_checkout_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_NONE"
		end

	git_checkout_safe: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_SAFE"
		end

	git_checkout_force: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_FORCE"
		end

	git_checkout_recreate_missing: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_RECREATE_MISSING"
		end

	git_checkout_allow_conflicts: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_ALLOW_CONFLICTS"
		end

	git_checkout_remove_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_REMOVE_UNTRACKED"
		end

	git_checkout_remove_ignored: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_REMOVE_IGNORED"
		end

	git_checkout_update_only: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_UPDATE_ONLY"
		end

	git_checkout_dont_update_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_DONT_UPDATE_INDEX"
		end

	git_checkout_no_refresh: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_NO_REFRESH"
		end

	git_checkout_skip_unmerged: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_SKIP_UNMERGED"
		end

	git_checkout_use_ours: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_USE_OURS"
		end

	git_checkout_use_theirs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_USE_THEIRS"
		end

	git_checkout_disable_pathspec_match: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH"
		end

	git_checkout_skip_locked_directories: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_SKIP_LOCKED_DIRECTORIES"
		end

	git_checkout_dont_overwrite_ignored: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_DONT_OVERWRITE_IGNORED"
		end

	git_checkout_conflict_style_merge: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_CONFLICT_STYLE_MERGE"
		end

	git_checkout_conflict_style_diff3: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_CONFLICT_STYLE_DIFF3"
		end

	git_checkout_dont_remove_existing: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_DONT_REMOVE_EXISTING"
		end

	git_checkout_dont_write_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_DONT_WRITE_INDEX"
		end

	git_checkout_update_submodules: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_UPDATE_SUBMODULES"
		end

	git_checkout_update_submodules_if_changed: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CHECKOUT_UPDATE_SUBMODULES_IF_CHANGED"
		end

end
