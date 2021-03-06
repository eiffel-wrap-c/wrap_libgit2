note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_TAG_API


feature -- Access

	git_tag_create_frombuffer (oid: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; buffer: STRING_8; force: INTEGER): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_git_tag_create_frombuffer (oid.item, repo.item, buffer_c_string.item, force)
		ensure
			instance_free: class
		end

	git_tag_lookup (a_out: GIT_TAG_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_lookup (a_out.item, repo.item, id.item)
		ensure
			instance_free: class
		end

	git_tag_lookup_prefix (a_out: GIT_TAG_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; len: INTEGER): INTEGER 
		do
			Result := c_git_tag_lookup_prefix (a_out.item, repo.item, id.item, len)
		ensure
			instance_free: class
		end

	git_tag_free (tag: GIT_TAG_STRUCT_API) 
		do
			c_git_tag_free (tag.item)
		ensure
			instance_free: class
		end

	git_tag_id (tag: GIT_TAG_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_tag_id (tag.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_tag_owner (tag: GIT_TAG_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_tag_owner (tag.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_tag_target (target_out: GIT_OBJECT_STRUCT_API; tag: GIT_TAG_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_target (target_out.item, tag.item)
		ensure
			instance_free: class
		end

	git_tag_target_id (tag: GIT_TAG_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_tag_target_id (tag.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_tag_target_type (tag: GIT_TAG_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_target_type (tag.item)
		ensure
			instance_free: class
		end

	git_tag_name (tag: GIT_TAG_STRUCT_API): POINTER 
		do
			Result := c_git_tag_name (tag.item)
		ensure
			instance_free: class
		end

	git_tag_tagger (tag: GIT_TAG_STRUCT_API): detachable GIT_SIGNATURE_STRUCT_API 
		do
			if attached c_git_tag_tagger (tag.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_tag_message (tag: GIT_TAG_STRUCT_API): POINTER 
		do
			Result := c_git_tag_message (tag.item)
		ensure
			instance_free: class
		end

	git_tag_create (oid: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; tag_name: STRING_8; target: GIT_OBJECT_STRUCT_API; tagger: GIT_SIGNATURE_STRUCT_API; message: STRING_8; force: INTEGER): INTEGER 
		local
			tag_name_c_string: C_STRING
			message_c_string: C_STRING
		do
			create tag_name_c_string.make (tag_name)
			create message_c_string.make (message)
			Result := c_git_tag_create (oid.item, repo.item, tag_name_c_string.item, target.item, tagger.item, message_c_string.item, force)
		ensure
			instance_free: class
		end

	git_tag_annotation_create (oid: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; tag_name: STRING_8; target: GIT_OBJECT_STRUCT_API; tagger: GIT_SIGNATURE_STRUCT_API; message: STRING_8): INTEGER 
		local
			tag_name_c_string: C_STRING
			message_c_string: C_STRING
		do
			create tag_name_c_string.make (tag_name)
			create message_c_string.make (message)
			Result := c_git_tag_annotation_create (oid.item, repo.item, tag_name_c_string.item, target.item, tagger.item, message_c_string.item)
		ensure
			instance_free: class
		end

	git_tag_create_from_buffer (oid: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; buffer: STRING_8; force: INTEGER): INTEGER 
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_git_tag_create_from_buffer (oid.item, repo.item, buffer_c_string.item, force)
		ensure
			instance_free: class
		end

	git_tag_create_lightweight (oid: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; tag_name: STRING_8; target: GIT_OBJECT_STRUCT_API; force: INTEGER): INTEGER 
		local
			tag_name_c_string: C_STRING
		do
			create tag_name_c_string.make (tag_name)
			Result := c_git_tag_create_lightweight (oid.item, repo.item, tag_name_c_string.item, target.item, force)
		ensure
			instance_free: class
		end

	git_tag_delete (repo: GIT_REPOSITORY_STRUCT_API; tag_name: STRING_8): INTEGER 
		local
			tag_name_c_string: C_STRING
		do
			create tag_name_c_string.make (tag_name)
			Result := c_git_tag_delete (repo.item, tag_name_c_string.item)
		ensure
			instance_free: class
		end

	git_tag_list (tag_names: GIT_STRARRAY_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_list (tag_names.item, repo.item)
		ensure
			instance_free: class
		end

	git_tag_list_match (tag_names: GIT_STRARRAY_STRUCT_API; pattern: STRING_8; repo: GIT_REPOSITORY_STRUCT_API): INTEGER 
		local
			pattern_c_string: C_STRING
		do
			create pattern_c_string.make (pattern)
			Result := c_git_tag_list_match (tag_names.item, pattern_c_string.item, repo.item)
		ensure
			instance_free: class
		end

	git_tag_foreach (repo: GIT_REPOSITORY_STRUCT_API; callback: POINTER; payload: POINTER): INTEGER 
		do
			Result := c_git_tag_foreach (repo.item, callback, payload)
		ensure
			instance_free: class
		end

	git_tag_peel (tag_target_out: GIT_OBJECT_STRUCT_API; tag: GIT_TAG_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_peel (tag_target_out.item, tag.item)
		ensure
			instance_free: class
		end

	git_tag_dup (a_out: GIT_TAG_STRUCT_API; source: GIT_TAG_STRUCT_API): INTEGER 
		do
			Result := c_git_tag_dup (a_out.item, source.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_tag_create_frombuffer (oid: POINTER; repo: POINTER; buffer: POINTER; force: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_create_frombuffer ((git_oid*)$oid, (git_repository*)$repo, (char const*)$buffer, (int)$force);
			]"
		end

	c_git_tag_lookup (a_out: POINTER; repo: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_lookup ((git_tag**)$a_out, (git_repository*)$repo, (git_oid const*)$id);
			]"
		end

	c_git_tag_lookup_prefix (a_out: POINTER; repo: POINTER; id: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_lookup_prefix ((git_tag**)$a_out, (git_repository*)$repo, (git_oid const*)$id, (size_t)$len);
			]"
		end

	c_git_tag_free (tag: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_tag_free ((git_tag*)$tag);
			]"
		end

	c_git_tag_id (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_id ((git_tag const*)$tag);
			]"
		end

	c_git_tag_owner (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_owner ((git_tag const*)$tag);
			]"
		end

	c_git_tag_target (target_out: POINTER; tag: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_target ((git_object**)$target_out, (git_tag const*)$tag);
			]"
		end

	c_git_tag_target_id (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_target_id ((git_tag const*)$tag);
			]"
		end

	c_git_tag_target_type (tag: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_target_type ((git_tag const*)$tag);
			]"
		end

	c_git_tag_name (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_name ((git_tag const*)$tag);
			]"
		end

	c_git_tag_tagger (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_tagger ((git_tag const*)$tag);
			]"
		end

	c_git_tag_message (tag: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_message ((git_tag const*)$tag);
			]"
		end

	c_git_tag_create (oid: POINTER; repo: POINTER; tag_name: POINTER; target: POINTER; tagger: POINTER; message: POINTER; force: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_create ((git_oid*)$oid, (git_repository*)$repo, (char const*)$tag_name, (git_object const*)$target, (git_signature const*)$tagger, (char const*)$message, (int)$force);
			]"
		end

	c_git_tag_annotation_create (oid: POINTER; repo: POINTER; tag_name: POINTER; target: POINTER; tagger: POINTER; message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_annotation_create ((git_oid*)$oid, (git_repository*)$repo, (char const*)$tag_name, (git_object const*)$target, (git_signature const*)$tagger, (char const*)$message);
			]"
		end

	c_git_tag_create_from_buffer (oid: POINTER; repo: POINTER; buffer: POINTER; force: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_create_from_buffer ((git_oid*)$oid, (git_repository*)$repo, (char const*)$buffer, (int)$force);
			]"
		end

	c_git_tag_create_lightweight (oid: POINTER; repo: POINTER; tag_name: POINTER; target: POINTER; force: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_create_lightweight ((git_oid*)$oid, (git_repository*)$repo, (char const*)$tag_name, (git_object const*)$target, (int)$force);
			]"
		end

	c_git_tag_delete (repo: POINTER; tag_name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_delete ((git_repository*)$repo, (char const*)$tag_name);
			]"
		end

	c_git_tag_list (tag_names: POINTER; repo: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_list ((git_strarray*)$tag_names, (git_repository*)$repo);
			]"
		end

	c_git_tag_list_match (tag_names: POINTER; pattern: POINTER; repo: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_list_match ((git_strarray*)$tag_names, (char const*)$pattern, (git_repository*)$repo);
			]"
		end

	c_git_tag_foreach (repo: POINTER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_foreach ((git_repository*)$repo, (git_tag_foreach_cb)$callback, (void*)$payload);
			]"
		end

	c_git_tag_peel (tag_target_out: POINTER; tag: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_peel ((git_object**)$tag_target_out, (git_tag const*)$tag);
			]"
		end

	c_git_tag_dup (a_out: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tag_dup ((git_tag**)$a_out, (git_tag*)$source);
			]"
		end

feature -- Externals Address

end
