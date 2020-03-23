note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_CREDENTIALS_API


feature -- Access

	git_credential_free (cred: GIT_CREDENTIAL_STRUCT_API) 
		do
			c_git_credential_free (cred.item)
		end

	git_credential_has_username (cred: GIT_CREDENTIAL_STRUCT_API): INTEGER 
		do
			Result := c_git_credential_has_username (cred.item)
		end

	git_credential_get_username (cred: GIT_CREDENTIAL_STRUCT_API): POINTER 
		do
			Result := c_git_credential_get_username (cred.item)
		end

	git_credential_userpass_plaintext_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; password: STRING): INTEGER 
		local
			username_c_string: C_STRING
			password_c_string: C_STRING
		do
			create username_c_string.make (username)
			create password_c_string.make (password)
			Result := c_git_credential_userpass_plaintext_new (a_out.item, username_c_string.item, password_c_string.item)
		end

	git_credential_default_new (a_out: GIT_CREDENTIAL_STRUCT_API): INTEGER 
		do
			Result := c_git_credential_default_new (a_out.item)
		end

	git_credential_username_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_credential_username_new (a_out.item, username_c_string.item)
		end

	git_credential_ssh_key_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; privatekey: STRING; passphrase: STRING): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
			privatekey_c_string: C_STRING
			passphrase_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			create privatekey_c_string.make (privatekey)
			create passphrase_c_string.make (passphrase)
			Result := c_git_credential_ssh_key_new (a_out.item, username_c_string.item, publickey_c_string.item, privatekey_c_string.item, passphrase_c_string.item)
		end

	git_credential_ssh_key_memory_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; privatekey: STRING; passphrase: STRING): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
			privatekey_c_string: C_STRING
			passphrase_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			create privatekey_c_string.make (privatekey)
			create passphrase_c_string.make (passphrase)
			Result := c_git_credential_ssh_key_memory_new (a_out.item, username_c_string.item, publickey_c_string.item, privatekey_c_string.item, passphrase_c_string.item)
		end

	git_credential_ssh_interactive_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; prompt_callback: POINTER; payload: POINTER): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_credential_ssh_interactive_new (a_out.item, username_c_string.item, prompt_callback, payload)
		end

	git_credential_ssh_key_from_agent (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_credential_ssh_key_from_agent (a_out.item, username_c_string.item)
		end

	git_credential_ssh_custom_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; publickey_len: INTEGER; sign_callback: POINTER; payload: POINTER): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			Result := c_git_credential_ssh_custom_new (a_out.item, username_c_string.item, publickey_c_string.item, publickey_len, sign_callback, payload)
		end

	git_credential_userpass (a_out: GIT_CREDENTIAL_STRUCT_API; url: STRING; user_from_url: STRING; allowed_types: INTEGER; payload: POINTER): INTEGER 
		local
			url_c_string: C_STRING
			user_from_url_c_string: C_STRING
		do
			create url_c_string.make (url)
			create user_from_url_c_string.make (user_from_url)
			Result := c_git_credential_userpass (a_out.item, url_c_string.item, user_from_url_c_string.item, allowed_types, payload)
		end

	git_cred_free (cred: GIT_CREDENTIAL_STRUCT_API) 
		do
			c_git_cred_free (cred.item)
		end

	git_cred_has_username (cred: GIT_CREDENTIAL_STRUCT_API): INTEGER 
		do
			Result := c_git_cred_has_username (cred.item)
		end

	git_cred_get_username (cred: GIT_CREDENTIAL_STRUCT_API): POINTER 
		do
			Result := c_git_cred_get_username (cred.item)
		end

	git_cred_userpass_plaintext_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; password: STRING): INTEGER 
		local
			username_c_string: C_STRING
			password_c_string: C_STRING
		do
			create username_c_string.make (username)
			create password_c_string.make (password)
			Result := c_git_cred_userpass_plaintext_new (a_out.item, username_c_string.item, password_c_string.item)
		end

	git_cred_default_new (a_out: GIT_CREDENTIAL_STRUCT_API): INTEGER 
		do
			Result := c_git_cred_default_new (a_out.item)
		end

	git_cred_username_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_cred_username_new (a_out.item, username_c_string.item)
		end

	git_cred_ssh_key_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; privatekey: STRING; passphrase: STRING): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
			privatekey_c_string: C_STRING
			passphrase_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			create privatekey_c_string.make (privatekey)
			create passphrase_c_string.make (passphrase)
			Result := c_git_cred_ssh_key_new (a_out.item, username_c_string.item, publickey_c_string.item, privatekey_c_string.item, passphrase_c_string.item)
		end

	git_cred_ssh_key_memory_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; privatekey: STRING; passphrase: STRING): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
			privatekey_c_string: C_STRING
			passphrase_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			create privatekey_c_string.make (privatekey)
			create passphrase_c_string.make (passphrase)
			Result := c_git_cred_ssh_key_memory_new (a_out.item, username_c_string.item, publickey_c_string.item, privatekey_c_string.item, passphrase_c_string.item)
		end

	git_cred_ssh_interactive_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; prompt_callback: POINTER; payload: POINTER): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_cred_ssh_interactive_new (a_out.item, username_c_string.item, prompt_callback, payload)
		end

	git_cred_ssh_key_from_agent (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING): INTEGER 
		local
			username_c_string: C_STRING
		do
			create username_c_string.make (username)
			Result := c_git_cred_ssh_key_from_agent (a_out.item, username_c_string.item)
		end

	git_cred_ssh_custom_new (a_out: GIT_CREDENTIAL_STRUCT_API; username: STRING; publickey: STRING; publickey_len: INTEGER; sign_callback: POINTER; payload: POINTER): INTEGER 
		local
			username_c_string: C_STRING
			publickey_c_string: C_STRING
		do
			create username_c_string.make (username)
			create publickey_c_string.make (publickey)
			Result := c_git_cred_ssh_custom_new (a_out.item, username_c_string.item, publickey_c_string.item, publickey_len, sign_callback, payload)
		end

	git_cred_userpass (a_out: GIT_CREDENTIAL_STRUCT_API; url: STRING; user_from_url: STRING; allowed_types: INTEGER; payload: POINTER): INTEGER 
		local
			url_c_string: C_STRING
			user_from_url_c_string: C_STRING
		do
			create url_c_string.make (url)
			create user_from_url_c_string.make (user_from_url)
			Result := c_git_cred_userpass (a_out.item, url_c_string.item, user_from_url_c_string.item, allowed_types, payload)
		end

feature -- Externals

	c_git_credential_free (cred: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_credential_free ((git_credential*)$cred);
			]"
		end

	c_git_credential_has_username (cred: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_has_username ((git_credential*)$cred);
			]"
		end

	c_git_credential_get_username (cred: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_get_username ((git_credential*)$cred);
			]"
		end

	c_git_credential_userpass_plaintext_new (a_out: POINTER; username: POINTER; password: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_userpass_plaintext_new ((git_credential**)$a_out, (char const*)$username, (char const*)$password);
			]"
		end

	c_git_credential_default_new (a_out: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_default_new ((git_credential**)$a_out);
			]"
		end

	c_git_credential_username_new (a_out: POINTER; username: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_username_new ((git_credential**)$a_out, (char const*)$username);
			]"
		end

	c_git_credential_ssh_key_new (a_out: POINTER; username: POINTER; publickey: POINTER; privatekey: POINTER; passphrase: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_ssh_key_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (char const*)$privatekey, (char const*)$passphrase);
			]"
		end

	c_git_credential_ssh_key_memory_new (a_out: POINTER; username: POINTER; publickey: POINTER; privatekey: POINTER; passphrase: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_ssh_key_memory_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (char const*)$privatekey, (char const*)$passphrase);
			]"
		end

	c_git_credential_ssh_interactive_new (a_out: POINTER; username: POINTER; prompt_callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_ssh_interactive_new ((git_credential**)$a_out, (char const*)$username, (git_credential_ssh_interactive_cb)$prompt_callback, (void*)$payload);
			]"
		end

	c_git_credential_ssh_key_from_agent (a_out: POINTER; username: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_ssh_key_from_agent ((git_credential**)$a_out, (char const*)$username);
			]"
		end

	c_git_credential_ssh_custom_new (a_out: POINTER; username: POINTER; publickey: POINTER; publickey_len: INTEGER; sign_callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_ssh_custom_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (size_t)$publickey_len, (git_credential_sign_cb)$sign_callback, (void*)$payload);
			]"
		end

	c_git_credential_userpass (a_out: POINTER; url: POINTER; user_from_url: POINTER; allowed_types: INTEGER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_credential_userpass ((git_credential**)$a_out, (char const*)$url, (char const*)$user_from_url, (unsigned int)$allowed_types, (void*)$payload);
			]"
		end

	c_git_cred_free (cred: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_cred_free ((git_credential*)$cred);
			]"
		end

	c_git_cred_has_username (cred: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_has_username ((git_credential*)$cred);
			]"
		end

	c_git_cred_get_username (cred: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_get_username ((git_credential*)$cred);
			]"
		end

	c_git_cred_userpass_plaintext_new (a_out: POINTER; username: POINTER; password: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_userpass_plaintext_new ((git_credential**)$a_out, (char const*)$username, (char const*)$password);
			]"
		end

	c_git_cred_default_new (a_out: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_default_new ((git_credential**)$a_out);
			]"
		end

	c_git_cred_username_new (a_out: POINTER; username: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_username_new ((git_credential**)$a_out, (char const*)$username);
			]"
		end

	c_git_cred_ssh_key_new (a_out: POINTER; username: POINTER; publickey: POINTER; privatekey: POINTER; passphrase: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_ssh_key_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (char const*)$privatekey, (char const*)$passphrase);
			]"
		end

	c_git_cred_ssh_key_memory_new (a_out: POINTER; username: POINTER; publickey: POINTER; privatekey: POINTER; passphrase: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_ssh_key_memory_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (char const*)$privatekey, (char const*)$passphrase);
			]"
		end

	c_git_cred_ssh_interactive_new (a_out: POINTER; username: POINTER; prompt_callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_ssh_interactive_new ((git_credential**)$a_out, (char const*)$username, (git_credential_ssh_interactive_cb)$prompt_callback, (void*)$payload);
			]"
		end

	c_git_cred_ssh_key_from_agent (a_out: POINTER; username: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_ssh_key_from_agent ((git_credential**)$a_out, (char const*)$username);
			]"
		end

	c_git_cred_ssh_custom_new (a_out: POINTER; username: POINTER; publickey: POINTER; publickey_len: INTEGER; sign_callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_ssh_custom_new ((git_credential**)$a_out, (char const*)$username, (char const*)$publickey, (size_t)$publickey_len, (git_credential_sign_cb)$sign_callback, (void*)$payload);
			]"
		end

	c_git_cred_userpass (a_out: POINTER; url: POINTER; user_from_url: POINTER; allowed_types: INTEGER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_cred_userpass ((git_credential**)$a_out, (char const*)$url, (char const*)$user_from_url, (unsigned int)$allowed_types, (void*)$payload);
			]"
		end

feature -- Externals Address

end
