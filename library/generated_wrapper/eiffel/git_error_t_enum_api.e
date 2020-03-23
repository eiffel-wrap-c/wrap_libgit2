-- enum wrapper
class GIT_ERROR_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_error_none or a_value = git_error_nomemory or a_value = git_error_os or a_value = git_error_invalid or a_value = git_error_reference or a_value = git_error_zlib or a_value = git_error_repository or a_value = git_error_config or a_value = git_error_regex or a_value = git_error_odb or a_value = git_error_index or a_value = git_error_object or a_value = git_error_net or a_value = git_error_tag or a_value = git_error_tree or a_value = git_error_indexer or a_value = git_error_ssl or a_value = git_error_submodule or a_value = git_error_thread or a_value = git_error_stash or a_value = git_error_checkout or a_value = git_error_fetchhead or a_value = git_error_merge or a_value = git_error_ssh or a_value = git_error_filter or a_value = git_error_revert or a_value = git_error_callback or a_value = git_error_cherrypick or a_value = git_error_describe or a_value = git_error_rebase or a_value = git_error_filesystem or a_value = git_error_patch or a_value = git_error_worktree or a_value = git_error_sha1 or a_value = git_error_http
		end

	git_error_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_NONE"
		end

	git_error_nomemory: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_NOMEMORY"
		end

	git_error_os: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_OS"
		end

	git_error_invalid: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_INVALID"
		end

	git_error_reference: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_REFERENCE"
		end

	git_error_zlib: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_ZLIB"
		end

	git_error_repository: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_REPOSITORY"
		end

	git_error_config: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_CONFIG"
		end

	git_error_regex: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_REGEX"
		end

	git_error_odb: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_ODB"
		end

	git_error_index: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_INDEX"
		end

	git_error_object: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_OBJECT"
		end

	git_error_net: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_NET"
		end

	git_error_tag: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_TAG"
		end

	git_error_tree: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_TREE"
		end

	git_error_indexer: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_INDEXER"
		end

	git_error_ssl: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_SSL"
		end

	git_error_submodule: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_SUBMODULE"
		end

	git_error_thread: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_THREAD"
		end

	git_error_stash: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_STASH"
		end

	git_error_checkout: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_CHECKOUT"
		end

	git_error_fetchhead: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_FETCHHEAD"
		end

	git_error_merge: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_MERGE"
		end

	git_error_ssh: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_SSH"
		end

	git_error_filter: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_FILTER"
		end

	git_error_revert: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_REVERT"
		end

	git_error_callback: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_CALLBACK"
		end

	git_error_cherrypick: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_CHERRYPICK"
		end

	git_error_describe: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_DESCRIBE"
		end

	git_error_rebase: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_REBASE"
		end

	git_error_filesystem: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_FILESYSTEM"
		end

	git_error_patch: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_PATCH"
		end

	git_error_worktree: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_WORKTREE"
		end

	git_error_sha1: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_SHA1"
		end

	git_error_http: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR_HTTP"
		end

end
