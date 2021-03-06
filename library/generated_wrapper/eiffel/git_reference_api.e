note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_REFERENCE_API


feature -- Access

	git_reference_lookup (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_reference_lookup (a_out.item, repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_name_to_id (a_out: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_reference_name_to_id (a_out.item, repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_dwim (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; shorthand: STRING_8): INTEGER 
		local
			shorthand_c_string: C_STRING
		do
			create shorthand_c_string.make (shorthand)
			Result := c_git_reference_dwim (a_out.item, repo.item, shorthand_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_symbolic_create_matching (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; target: STRING_8; force: INTEGER; current_value: STRING_8; log_message: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			target_c_string: C_STRING
			current_value_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create name_c_string.make (name)
			create target_c_string.make (target)
			create current_value_c_string.make (current_value)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_symbolic_create_matching (a_out.item, repo.item, name_c_string.item, target_c_string.item, force, current_value_c_string.item, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_symbolic_create (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; target: STRING_8; force: INTEGER; log_message: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			target_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create name_c_string.make (name)
			create target_c_string.make (target)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_symbolic_create (a_out.item, repo.item, name_c_string.item, target_c_string.item, force, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_create (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; id: GIT_OID_STRUCT_API; force: INTEGER; log_message: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create name_c_string.make (name)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_create (a_out.item, repo.item, name_c_string.item, id.item, force, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_create_matching (a_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; id: GIT_OID_STRUCT_API; force: INTEGER; current_id: GIT_OID_STRUCT_API; log_message: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create name_c_string.make (name)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_create_matching (a_out.item, repo.item, name_c_string.item, id.item, force, current_id.item, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_target (ref: GIT_REFERENCE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_reference_target (ref.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_reference_target_peel (ref: GIT_REFERENCE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_reference_target_peel (ref.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_reference_symbolic_target (ref: GIT_REFERENCE_STRUCT_API): POINTER 
		do
			Result := c_git_reference_symbolic_target (ref.item)
		ensure
			instance_free: class
		end

	git_reference_type (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_type (ref.item)
		ensure
			instance_free: class
		end

	git_reference_name (ref: GIT_REFERENCE_STRUCT_API): POINTER 
		do
			Result := c_git_reference_name (ref.item)
		ensure
			instance_free: class
		end

	git_reference_resolve (a_out: GIT_REFERENCE_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_resolve (a_out.item, ref.item)
		ensure
			instance_free: class
		end

	git_reference_owner (ref: GIT_REFERENCE_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_reference_owner (ref.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_reference_symbolic_set_target (a_out: GIT_REFERENCE_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API; target: STRING_8; log_message: STRING_8): INTEGER 
		local
			target_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create target_c_string.make (target)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_symbolic_set_target (a_out.item, ref.item, target_c_string.item, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_set_target (a_out: GIT_REFERENCE_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API; id: GIT_OID_STRUCT_API; log_message: STRING_8): INTEGER 
		local
			log_message_c_string: C_STRING
		do
			create log_message_c_string.make (log_message)
			Result := c_git_reference_set_target (a_out.item, ref.item, id.item, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_rename (new_ref: GIT_REFERENCE_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API; new_name: STRING_8; force: INTEGER; log_message: STRING_8): INTEGER 
		local
			new_name_c_string: C_STRING
			log_message_c_string: C_STRING
		do
			create new_name_c_string.make (new_name)
			create log_message_c_string.make (log_message)
			Result := c_git_reference_rename (new_ref.item, ref.item, new_name_c_string.item, force, log_message_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_delete (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_delete (ref.item)
		ensure
			instance_free: class
		end

	git_reference_remove (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_reference_remove (repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_list (array: GIT_STRARRAY_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_list (array.item, repo.item)
		ensure
			instance_free: class
		end

	git_reference_foreach (repo: GIT_REPOSITORY_STRUCT_API; callback: POINTER; payload: POINTER): INTEGER 
		do
			Result := c_git_reference_foreach (repo.item, callback, payload)
		ensure
			instance_free: class
		end

	git_reference_foreach_name (repo: GIT_REPOSITORY_STRUCT_API; callback: POINTER; payload: POINTER): INTEGER 
		do
			Result := c_git_reference_foreach_name (repo.item, callback, payload)
		ensure
			instance_free: class
		end

	git_reference_dup (dest: GIT_REFERENCE_STRUCT_API; source: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_dup (dest.item, source.item)
		ensure
			instance_free: class
		end

	git_reference_free (ref: GIT_REFERENCE_STRUCT_API) 
		do
			c_git_reference_free (ref.item)
		ensure
			instance_free: class
		end

	git_reference_cmp (ref1: GIT_REFERENCE_STRUCT_API; ref2: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_cmp (ref1.item, ref2.item)
		ensure
			instance_free: class
		end

	git_reference_iterator_new (a_out: GIT_REFERENCE_ITERATOR_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_iterator_new (a_out.item, repo.item)
		ensure
			instance_free: class
		end

	git_reference_iterator_glob_new (a_out: GIT_REFERENCE_ITERATOR_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; glob: STRING_8): INTEGER 
		local
			glob_c_string: C_STRING
		do
			create glob_c_string.make (glob)
			Result := c_git_reference_iterator_glob_new (a_out.item, repo.item, glob_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_next (a_out: GIT_REFERENCE_STRUCT_API; iter: GIT_REFERENCE_ITERATOR_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_next (a_out.item, iter.item)
		ensure
			instance_free: class
		end

	git_reference_next_name (a_out: POINTER; iter: GIT_REFERENCE_ITERATOR_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_next_name (a_out, iter.item)
		ensure
			instance_free: class
		end

	git_reference_iterator_free (iter: GIT_REFERENCE_ITERATOR_STRUCT_API) 
		do
			c_git_reference_iterator_free (iter.item)
		ensure
			instance_free: class
		end

	git_reference_foreach_glob (repo: GIT_REPOSITORY_STRUCT_API; glob: STRING_8; callback: POINTER; payload: POINTER): INTEGER 
		local
			glob_c_string: C_STRING
		do
			create glob_c_string.make (glob)
			Result := c_git_reference_foreach_glob (repo.item, glob_c_string.item, callback, payload)
		ensure
			instance_free: class
		end

	git_reference_has_log (repo: GIT_REPOSITORY_STRUCT_API; refname: STRING_8): INTEGER 
		local
			refname_c_string: C_STRING
		do
			create refname_c_string.make (refname)
			Result := c_git_reference_has_log (repo.item, refname_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_ensure_log (repo: GIT_REPOSITORY_STRUCT_API; refname: STRING_8): INTEGER 
		local
			refname_c_string: C_STRING
		do
			create refname_c_string.make (refname)
			Result := c_git_reference_ensure_log (repo.item, refname_c_string.item)
		ensure
			instance_free: class
		end

	git_reference_is_branch (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_is_branch (ref.item)
		ensure
			instance_free: class
		end

	git_reference_is_remote (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_is_remote (ref.item)
		ensure
			instance_free: class
		end

	git_reference_is_tag (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_is_tag (ref.item)
		ensure
			instance_free: class
		end

	git_reference_is_note (ref: GIT_REFERENCE_STRUCT_API): INTEGER 
		do
			Result := c_git_reference_is_note (ref.item)
		ensure
			instance_free: class
		end

	git_reference_normalize_name (buffer_out: POINTER; buffer_size: INTEGER; name: POINTER; flags: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_normalize_name ((char*)$buffer_out, (size_t)$buffer_size, (char const*)$name, (unsigned int)$flags);
			]"
		end

	git_reference_peel (a_out: GIT_OBJECT_STRUCT_API; ref: GIT_REFERENCE_STRUCT_API; type: INTEGER): INTEGER 
		do
			Result := c_git_reference_peel (a_out.item, ref.item, type)
		ensure
			instance_free: class
		end

	git_reference_is_valid_name (refname: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_is_valid_name ((char const*)$refname);
			]"
		end

	git_reference_shorthand (ref: GIT_REFERENCE_STRUCT_API): POINTER 
		do
			Result := c_git_reference_shorthand (ref.item)
		ensure
			instance_free: class
		end

	git_submodule_update_options_init (opts: GIT_SUBMODULE_UPDATE_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_submodule_update_options_init (opts.item, version)
		ensure
			instance_free: class
		end

	git_submodule_update (submodule: GIT_SUBMODULE_STRUCT_API; init: INTEGER; options: GIT_SUBMODULE_UPDATE_OPTIONS_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_update (submodule.item, init, options.item)
		ensure
			instance_free: class
		end

	git_submodule_lookup (a_out: GIT_SUBMODULE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_submodule_lookup (a_out.item, repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_submodule_free (submodule: GIT_SUBMODULE_STRUCT_API) 
		do
			c_git_submodule_free (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_foreach (repo: GIT_REPOSITORY_STRUCT_API; callback: POINTER; payload: POINTER): INTEGER 
		do
			Result := c_git_submodule_foreach (repo.item, callback, payload)
		ensure
			instance_free: class
		end

	git_submodule_add_setup (a_out: GIT_SUBMODULE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; url: STRING_8; path: STRING_8; use_gitlink: INTEGER): INTEGER 
		local
			url_c_string: C_STRING
			path_c_string: C_STRING
		do
			create url_c_string.make (url)
			create path_c_string.make (path)
			Result := c_git_submodule_add_setup (a_out.item, repo.item, url_c_string.item, path_c_string.item, use_gitlink)
		ensure
			instance_free: class
		end

	git_submodule_clone (a_out: GIT_REPOSITORY_STRUCT_API; submodule: GIT_SUBMODULE_STRUCT_API; opts: GIT_SUBMODULE_UPDATE_OPTIONS_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_clone (a_out.item, submodule.item, opts.item)
		ensure
			instance_free: class
		end

	git_submodule_add_finalize (submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_add_finalize (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_add_to_index (submodule: GIT_SUBMODULE_STRUCT_API; write_index: INTEGER): INTEGER 
		do
			Result := c_git_submodule_add_to_index (submodule.item, write_index)
		ensure
			instance_free: class
		end

	git_submodule_owner (submodule: GIT_SUBMODULE_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_submodule_owner (submodule.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_submodule_name (submodule: GIT_SUBMODULE_STRUCT_API): POINTER 
		do
			Result := c_git_submodule_name (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_path (submodule: GIT_SUBMODULE_STRUCT_API): POINTER 
		do
			Result := c_git_submodule_path (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_url (submodule: GIT_SUBMODULE_STRUCT_API): POINTER 
		do
			Result := c_git_submodule_url (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_resolve_url (a_out: GIT_BUF_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; url: STRING_8): INTEGER 
		local
			url_c_string: C_STRING
		do
			create url_c_string.make (url)
			Result := c_git_submodule_resolve_url (a_out.item, repo.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_submodule_branch (submodule: GIT_SUBMODULE_STRUCT_API): POINTER 
		do
			Result := c_git_submodule_branch (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_set_branch (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; branch: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			branch_c_string: C_STRING
		do
			create name_c_string.make (name)
			create branch_c_string.make (branch)
			Result := c_git_submodule_set_branch (repo.item, name_c_string.item, branch_c_string.item)
		ensure
			instance_free: class
		end

	git_submodule_set_url (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; url: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			url_c_string: C_STRING
		do
			create name_c_string.make (name)
			create url_c_string.make (url)
			Result := c_git_submodule_set_url (repo.item, name_c_string.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_submodule_index_id (submodule: GIT_SUBMODULE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_submodule_index_id (submodule.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_submodule_head_id (submodule: GIT_SUBMODULE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_submodule_head_id (submodule.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_submodule_wd_id (submodule: GIT_SUBMODULE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_submodule_wd_id (submodule.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_submodule_ignore (submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_ignore (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_set_ignore (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; ignore: INTEGER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_submodule_set_ignore (repo.item, name_c_string.item, ignore)
		ensure
			instance_free: class
		end

	git_submodule_update_strategy (submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_update_strategy (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_set_update (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; update: INTEGER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_submodule_set_update (repo.item, name_c_string.item, update)
		ensure
			instance_free: class
		end

	git_submodule_fetch_recurse_submodules (submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_fetch_recurse_submodules (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_set_fetch_recurse_submodules (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; fetch_recurse_submodules: INTEGER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_submodule_set_fetch_recurse_submodules (repo.item, name_c_string.item, fetch_recurse_submodules)
		ensure
			instance_free: class
		end

	git_submodule_init (submodule: GIT_SUBMODULE_STRUCT_API; overwrite: INTEGER): INTEGER 
		do
			Result := c_git_submodule_init (submodule.item, overwrite)
		ensure
			instance_free: class
		end

	git_submodule_repo_init (a_out: GIT_REPOSITORY_STRUCT_API; sm: GIT_SUBMODULE_STRUCT_API; use_gitlink: INTEGER): INTEGER 
		do
			Result := c_git_submodule_repo_init (a_out.item, sm.item, use_gitlink)
		ensure
			instance_free: class
		end

	git_submodule_sync (submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_sync (submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_open (repo: GIT_REPOSITORY_STRUCT_API; submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_open (repo.item, submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_reload (submodule: GIT_SUBMODULE_STRUCT_API; force: INTEGER): INTEGER 
		do
			Result := c_git_submodule_reload (submodule.item, force)
		ensure
			instance_free: class
		end

	git_submodule_status (status: POINTER; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; ignore: INTEGER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_submodule_status (status, repo.item, name_c_string.item, ignore)
		ensure
			instance_free: class
		end

	git_submodule_location (location_status: POINTER; submodule: GIT_SUBMODULE_STRUCT_API): INTEGER 
		do
			Result := c_git_submodule_location (location_status, submodule.item)
		ensure
			instance_free: class
		end

	git_submodule_update_init_options (opts: GIT_SUBMODULE_UPDATE_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_submodule_update_init_options (opts.item, version)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_reference_lookup (a_out: POINTER; repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_lookup ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_reference_name_to_id (a_out: POINTER; repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_name_to_id ((git_oid*)$a_out, (git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_reference_dwim (a_out: POINTER; repo: POINTER; shorthand: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_dwim ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$shorthand);
			]"
		end

	c_git_reference_symbolic_create_matching (a_out: POINTER; repo: POINTER; name: POINTER; target: POINTER; force: INTEGER; current_value: POINTER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_symbolic_create_matching ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$name, (char const*)$target, (int)$force, (char const*)$current_value, (char const*)$log_message);
			]"
		end

	c_git_reference_symbolic_create (a_out: POINTER; repo: POINTER; name: POINTER; target: POINTER; force: INTEGER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_symbolic_create ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$name, (char const*)$target, (int)$force, (char const*)$log_message);
			]"
		end

	c_git_reference_create (a_out: POINTER; repo: POINTER; name: POINTER; id: POINTER; force: INTEGER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_create ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$name, (git_oid const*)$id, (int)$force, (char const*)$log_message);
			]"
		end

	c_git_reference_create_matching (a_out: POINTER; repo: POINTER; name: POINTER; id: POINTER; force: INTEGER; current_id: POINTER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_create_matching ((git_reference**)$a_out, (git_repository*)$repo, (char const*)$name, (git_oid const*)$id, (int)$force, (git_oid const*)$current_id, (char const*)$log_message);
			]"
		end

	c_git_reference_target (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_target ((git_reference const*)$ref);
			]"
		end

	c_git_reference_target_peel (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_target_peel ((git_reference const*)$ref);
			]"
		end

	c_git_reference_symbolic_target (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_symbolic_target ((git_reference const*)$ref);
			]"
		end

	c_git_reference_type (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_type ((git_reference const*)$ref);
			]"
		end

	c_git_reference_name (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_name ((git_reference const*)$ref);
			]"
		end

	c_git_reference_resolve (a_out: POINTER; ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_resolve ((git_reference**)$a_out, (git_reference const*)$ref);
			]"
		end

	c_git_reference_owner (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_owner ((git_reference const*)$ref);
			]"
		end

	c_git_reference_symbolic_set_target (a_out: POINTER; ref: POINTER; target: POINTER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_symbolic_set_target ((git_reference**)$a_out, (git_reference*)$ref, (char const*)$target, (char const*)$log_message);
			]"
		end

	c_git_reference_set_target (a_out: POINTER; ref: POINTER; id: POINTER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_set_target ((git_reference**)$a_out, (git_reference*)$ref, (git_oid const*)$id, (char const*)$log_message);
			]"
		end

	c_git_reference_rename (new_ref: POINTER; ref: POINTER; new_name: POINTER; force: INTEGER; log_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_rename ((git_reference**)$new_ref, (git_reference*)$ref, (char const*)$new_name, (int)$force, (char const*)$log_message);
			]"
		end

	c_git_reference_delete (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_delete ((git_reference*)$ref);
			]"
		end

	c_git_reference_remove (repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_remove ((git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_reference_list (array: POINTER; repo: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_list ((git_strarray*)$array, (git_repository*)$repo);
			]"
		end

	c_git_reference_foreach (repo: POINTER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_foreach ((git_repository*)$repo, (git_reference_foreach_cb)$callback, (void*)$payload);
			]"
		end

	c_git_reference_foreach_name (repo: POINTER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_foreach_name ((git_repository*)$repo, (git_reference_foreach_name_cb)$callback, (void*)$payload);
			]"
		end

	c_git_reference_dup (dest: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_dup ((git_reference**)$dest, (git_reference*)$source);
			]"
		end

	c_git_reference_free (ref: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_reference_free ((git_reference*)$ref);
			]"
		end

	c_git_reference_cmp (ref1: POINTER; ref2: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_cmp ((git_reference const*)$ref1, (git_reference const*)$ref2);
			]"
		end

	c_git_reference_iterator_new (a_out: POINTER; repo: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_iterator_new ((git_reference_iterator**)$a_out, (git_repository*)$repo);
			]"
		end

	c_git_reference_iterator_glob_new (a_out: POINTER; repo: POINTER; glob: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_iterator_glob_new ((git_reference_iterator**)$a_out, (git_repository*)$repo, (char const*)$glob);
			]"
		end

	c_git_reference_next (a_out: POINTER; iter: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_next ((git_reference**)$a_out, (git_reference_iterator*)$iter);
			]"
		end

	c_git_reference_next_name (a_out: POINTER; iter: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_next_name ((char const**)$a_out, (git_reference_iterator*)$iter);
			]"
		end

	c_git_reference_iterator_free (iter: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_reference_iterator_free ((git_reference_iterator*)$iter);
			]"
		end

	c_git_reference_foreach_glob (repo: POINTER; glob: POINTER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_foreach_glob ((git_repository*)$repo, (char const*)$glob, (git_reference_foreach_name_cb)$callback, (void*)$payload);
			]"
		end

	c_git_reference_has_log (repo: POINTER; refname: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_has_log ((git_repository*)$repo, (char const*)$refname);
			]"
		end

	c_git_reference_ensure_log (repo: POINTER; refname: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_ensure_log ((git_repository*)$repo, (char const*)$refname);
			]"
		end

	c_git_reference_is_branch (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_is_branch ((git_reference const*)$ref);
			]"
		end

	c_git_reference_is_remote (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_is_remote ((git_reference const*)$ref);
			]"
		end

	c_git_reference_is_tag (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_is_tag ((git_reference const*)$ref);
			]"
		end

	c_git_reference_is_note (ref: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_is_note ((git_reference const*)$ref);
			]"
		end

	c_git_reference_peel (a_out: POINTER; ref: POINTER; type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_peel ((git_object**)$a_out, (git_reference const*)$ref, (git_object_t)$type);
			]"
		end

	c_git_reference_shorthand (ref: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_reference_shorthand ((git_reference const*)$ref);
			]"
		end

	c_git_submodule_update_options_init (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_update_options_init ((git_submodule_update_options*)$opts, (unsigned int)$version);
			]"
		end

	c_git_submodule_update (submodule: POINTER; init: INTEGER; options: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_update ((git_submodule*)$submodule, (int)$init, (git_submodule_update_options*)$options);
			]"
		end

	c_git_submodule_lookup (a_out: POINTER; repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_lookup ((git_submodule**)$a_out, (git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_submodule_free (submodule: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_submodule_free ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_foreach (repo: POINTER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_foreach ((git_repository*)$repo, (git_submodule_cb)$callback, (void*)$payload);
			]"
		end

	c_git_submodule_add_setup (a_out: POINTER; repo: POINTER; url: POINTER; path: POINTER; use_gitlink: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_add_setup ((git_submodule**)$a_out, (git_repository*)$repo, (char const*)$url, (char const*)$path, (int)$use_gitlink);
			]"
		end

	c_git_submodule_clone (a_out: POINTER; submodule: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_clone ((git_repository**)$a_out, (git_submodule*)$submodule, (git_submodule_update_options const*)$opts);
			]"
		end

	c_git_submodule_add_finalize (submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_add_finalize ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_add_to_index (submodule: POINTER; write_index: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_add_to_index ((git_submodule*)$submodule, (int)$write_index);
			]"
		end

	c_git_submodule_owner (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_owner ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_name (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_name ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_path (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_path ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_url (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_url ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_resolve_url (a_out: POINTER; repo: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_resolve_url ((git_buf*)$a_out, (git_repository*)$repo, (char const*)$url);
			]"
		end

	c_git_submodule_branch (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_branch ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_set_branch (repo: POINTER; name: POINTER; branch: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_set_branch ((git_repository*)$repo, (char const*)$name, (char const*)$branch);
			]"
		end

	c_git_submodule_set_url (repo: POINTER; name: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_set_url ((git_repository*)$repo, (char const*)$name, (char const*)$url);
			]"
		end

	c_git_submodule_index_id (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_index_id ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_head_id (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_head_id ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_wd_id (submodule: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_wd_id ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_ignore (submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_ignore ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_set_ignore (repo: POINTER; name: POINTER; ignore: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_set_ignore ((git_repository*)$repo, (char const*)$name, (git_submodule_ignore_t)$ignore);
			]"
		end

	c_git_submodule_update_strategy (submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_update_strategy ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_set_update (repo: POINTER; name: POINTER; update: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_set_update ((git_repository*)$repo, (char const*)$name, (git_submodule_update_t)$update);
			]"
		end

	c_git_submodule_fetch_recurse_submodules (submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_fetch_recurse_submodules ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_set_fetch_recurse_submodules (repo: POINTER; name: POINTER; fetch_recurse_submodules: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_set_fetch_recurse_submodules ((git_repository*)$repo, (char const*)$name, (git_submodule_recurse_t)$fetch_recurse_submodules);
			]"
		end

	c_git_submodule_init (submodule: POINTER; overwrite: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_init ((git_submodule*)$submodule, (int)$overwrite);
			]"
		end

	c_git_submodule_repo_init (a_out: POINTER; sm: POINTER; use_gitlink: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_repo_init ((git_repository**)$a_out, (git_submodule const*)$sm, (int)$use_gitlink);
			]"
		end

	c_git_submodule_sync (submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_sync ((git_submodule*)$submodule);
			]"
		end

	c_git_submodule_open (repo: POINTER; submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_open ((git_repository**)$repo, (git_submodule*)$submodule);
			]"
		end

	c_git_submodule_reload (submodule: POINTER; force: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_reload ((git_submodule*)$submodule, (int)$force);
			]"
		end

	c_git_submodule_status (status: POINTER; repo: POINTER; name: POINTER; ignore: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_status ((unsigned int*)$status, (git_repository*)$repo, (char const*)$name, (git_submodule_ignore_t)$ignore);
			]"
		end

	c_git_submodule_location (location_status: POINTER; submodule: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_location ((unsigned int*)$location_status, (git_submodule*)$submodule);
			]"
		end

	c_git_submodule_update_init_options (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_submodule_update_init_options ((git_submodule_update_options*)$opts, (unsigned int)$version);
			]"
		end

feature -- Externals Address

end
