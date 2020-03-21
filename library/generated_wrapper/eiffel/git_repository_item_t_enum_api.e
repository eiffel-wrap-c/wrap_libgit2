-- enum wrapper
class GIT_REPOSITORY_ITEM_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_repository_item_gitdir or a_value = git_repository_item_workdir or a_value = git_repository_item_commondir or a_value = git_repository_item_index or a_value = git_repository_item_objects or a_value = git_repository_item_refs or a_value = git_repository_item_packed_refs or a_value = git_repository_item_remotes or a_value = git_repository_item_config or a_value = git_repository_item_info or a_value = git_repository_item_hooks or a_value = git_repository_item_logs or a_value = git_repository_item_modules or a_value = git_repository_item_worktrees or a_value = git_repository_item__last
		end

	git_repository_item_gitdir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_GITDIR"
		end

	git_repository_item_workdir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_WORKDIR"
		end

	git_repository_item_commondir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_COMMONDIR"
		end

	git_repository_item_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_INDEX"
		end

	git_repository_item_objects: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_OBJECTS"
		end

	git_repository_item_refs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_REFS"
		end

	git_repository_item_packed_refs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_PACKED_REFS"
		end

	git_repository_item_remotes: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_REMOTES"
		end

	git_repository_item_config: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_CONFIG"
		end

	git_repository_item_info: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_INFO"
		end

	git_repository_item_hooks: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_HOOKS"
		end

	git_repository_item_logs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_LOGS"
		end

	git_repository_item_modules: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_MODULES"
		end

	git_repository_item_worktrees: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM_WORKTREES"
		end

	git_repository_item__last: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_ITEM__LAST"
		end

end
