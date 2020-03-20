note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_OBJECT_API


feature -- Access

	git_object_lookup (object: GIT_OBJECT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; type: INTEGER): INTEGER 
		do
			Result := c_git_object_lookup (object.item, repo.item, id.item, type)
		end

	git_object_lookup_prefix (object_out: GIT_OBJECT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; len: INTEGER; type: INTEGER): INTEGER 
		do
			Result := c_git_object_lookup_prefix (object_out.item, repo.item, id.item, len, type)
		end

	git_object_lookup_bypath (a_out: GIT_OBJECT_STRUCT_API; treeish: GIT_OBJECT_STRUCT_API; path: STRING; type: INTEGER): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_git_object_lookup_bypath (a_out.item, treeish.item, path_c_string.item, type)
		end

	git_object_id (obj: GIT_OBJECT_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_object_id (obj.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_object_short_id (a_out: GIT_BUF_STRUCT_API; obj: GIT_OBJECT_STRUCT_API): INTEGER 
		do
			Result := c_git_object_short_id (a_out.item, obj.item)
		end

	git_object_type (obj: GIT_OBJECT_STRUCT_API): INTEGER 
		do
			Result := c_git_object_type (obj.item)
		end

	git_object_owner (obj: GIT_OBJECT_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_object_owner (obj.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_object_free (object: GIT_OBJECT_STRUCT_API) 
		do
			c_git_object_free (object.item)
		end

	git_object_type2string (type: INTEGER): POINTER 
		do
			Result := c_git_object_type2string (type)
		end

	git_object_string2type (str: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_string2type ((char const*)$str);
			]"
		end

	git_object_typeisloose (type: INTEGER): INTEGER 
		do
			Result := c_git_object_typeisloose (type)
		end

	git_object__size (type: INTEGER): INTEGER 
		do
			Result := c_git_object__size (type)
		end

	git_object_peel (peeled: GIT_OBJECT_STRUCT_API; object: GIT_OBJECT_STRUCT_API; target_type: INTEGER): INTEGER 
		do
			Result := c_git_object_peel (peeled.item, object.item, target_type)
		end

	git_object_dup (dest: GIT_OBJECT_STRUCT_API; source: GIT_OBJECT_STRUCT_API): INTEGER 
		do
			Result := c_git_object_dup (dest.item, source.item)
		end

feature -- Externals

	c_git_object_lookup (object: POINTER; repo: POINTER; id: POINTER; type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_lookup ((git_object**)$object, (git_repository*)$repo, (git_oid const*)$id, (git_object_t)$type);
			]"
		end

	c_git_object_lookup_prefix (object_out: POINTER; repo: POINTER; id: POINTER; len: INTEGER; type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_lookup_prefix ((git_object**)$object_out, (git_repository*)$repo, (git_oid const*)$id, (size_t)$len, (git_object_t)$type);
			]"
		end

	c_git_object_lookup_bypath (a_out: POINTER; treeish: POINTER; path: POINTER; type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_lookup_bypath ((git_object**)$a_out, (git_object const*)$treeish, (char const*)$path, (git_object_t)$type);
			]"
		end

	c_git_object_id (obj: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_id ((git_object const*)$obj);
			]"
		end

	c_git_object_short_id (a_out: POINTER; obj: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_short_id ((git_buf*)$a_out, (git_object const*)$obj);
			]"
		end

	c_git_object_type (obj: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_type ((git_object const*)$obj);
			]"
		end

	c_git_object_owner (obj: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_owner ((git_object const*)$obj);
			]"
		end

	c_git_object_free (object: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_object_free ((git_object*)$object);
			]"
		end

	c_git_object_type2string (type: INTEGER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_type2string ((git_object_t)$type);
			]"
		end

	c_git_object_typeisloose (type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_typeisloose ((git_object_t)$type);
			]"
		end

	c_git_object__size (type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object__size ((git_object_t)$type);
			]"
		end

	c_git_object_peel (peeled: POINTER; object: POINTER; target_type: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_peel ((git_object**)$peeled, (git_object const*)$object, (git_object_t)$target_type);
			]"
		end

	c_git_object_dup (dest: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_object_dup ((git_object**)$dest, (git_object*)$source);
			]"
		end

feature -- Externals Address

end
