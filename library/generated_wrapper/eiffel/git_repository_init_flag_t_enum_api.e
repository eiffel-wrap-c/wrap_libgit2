-- enum wrapper
class GIT_REPOSITORY_INIT_FLAG_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_repository_init_bare or a_value = git_repository_init_no_reinit or a_value = git_repository_init_no_dotgit_dir or a_value = git_repository_init_mkdir or a_value = git_repository_init_mkpath or a_value = git_repository_init_external_template or a_value = git_repository_init_relative_gitlink
		end

	git_repository_init_bare: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_BARE"
		end

	git_repository_init_no_reinit: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_NO_REINIT"
		end

	git_repository_init_no_dotgit_dir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_NO_DOTGIT_DIR"
		end

	git_repository_init_mkdir: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_MKDIR"
		end

	git_repository_init_mkpath: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_MKPATH"
		end

	git_repository_init_external_template: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE"
		end

	git_repository_init_relative_gitlink: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REPOSITORY_INIT_RELATIVE_GITLINK"
		end

end
