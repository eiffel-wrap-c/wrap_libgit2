-- enum wrapper
class GIT_REPOSITORY_STATE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_repository_state_none or a_value = git_repository_state_merge or a_value = git_repository_state_revert or a_value = git_repository_state_revert_sequence or a_value = git_repository_state_cherrypick or a_value = git_repository_state_cherrypick_sequence or a_value = git_repository_state_bisect or a_value = git_repository_state_rebase or a_value = git_repository_state_rebase_interactive or a_value = git_repository_state_rebase_merge or a_value = git_repository_state_apply_mailbox or a_value = git_repository_state_apply_mailbox_or_rebase
		end

	git_repository_state_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_NONE"
		end

	git_repository_state_merge: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_MERGE"
		end

	git_repository_state_revert: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_REVERT"
		end

	git_repository_state_revert_sequence: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_REVERT_SEQUENCE"
		end

	git_repository_state_cherrypick: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_CHERRYPICK"
		end

	git_repository_state_cherrypick_sequence: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE"
		end

	git_repository_state_bisect: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_BISECT"
		end

	git_repository_state_rebase: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_REBASE"
		end

	git_repository_state_rebase_interactive: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_REBASE_INTERACTIVE"
		end

	git_repository_state_rebase_merge: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_REBASE_MERGE"
		end

	git_repository_state_apply_mailbox: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_APPLY_MAILBOX"
		end

	git_repository_state_apply_mailbox_or_rebase: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE"
		end

end
