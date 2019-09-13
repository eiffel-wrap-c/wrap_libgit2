-- enum wrapper
class GIT_CREDTYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_credtype_userpass_plaintext or a_value = git_credtype_ssh_key or a_value = git_credtype_ssh_custom or a_value = git_credtype_default or a_value = git_credtype_ssh_interactive or a_value = git_credtype_username or a_value = git_credtype_ssh_memory
		end

	git_credtype_userpass_plaintext: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_USERPASS_PLAINTEXT"
		end

	git_credtype_ssh_key: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_SSH_KEY"
		end

	git_credtype_ssh_custom: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_SSH_CUSTOM"
		end

	git_credtype_default: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_DEFAULT"
		end

	git_credtype_ssh_interactive: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_SSH_INTERACTIVE"
		end

	git_credtype_username: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_USERNAME"
		end

	git_credtype_ssh_memory: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_CREDTYPE_SSH_MEMORY"
		end

end
