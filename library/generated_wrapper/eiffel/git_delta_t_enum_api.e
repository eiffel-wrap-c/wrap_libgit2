-- enum wrapper
class GIT_DELTA_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_delta_unmodified or a_value = git_delta_added or a_value = git_delta_deleted or a_value = git_delta_modified or a_value = git_delta_renamed or a_value = git_delta_copied or a_value = git_delta_ignored or a_value = git_delta_untracked or a_value = git_delta_typechange or a_value = git_delta_unreadable or a_value = git_delta_conflicted
		end

	git_delta_unmodified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_UNMODIFIED"
		end

	git_delta_added: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_ADDED"
		end

	git_delta_deleted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_DELETED"
		end

	git_delta_modified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_MODIFIED"
		end

	git_delta_renamed: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_RENAMED"
		end

	git_delta_copied: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_COPIED"
		end

	git_delta_ignored: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_IGNORED"
		end

	git_delta_untracked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_UNTRACKED"
		end

	git_delta_typechange: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_TYPECHANGE"
		end

	git_delta_unreadable: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_UNREADABLE"
		end

	git_delta_conflicted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_DELTA_CONFLICTED"
		end

end
