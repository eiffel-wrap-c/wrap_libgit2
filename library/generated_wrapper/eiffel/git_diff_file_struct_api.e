note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_DIFF_FILE_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	id: GIT_OID_STRUCT_API
			-- Access member `id`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_id(item) )
		ensure
			result_not_void: Result.item = c_id (item) 
		end

	set_id (a_value: GIT_OID_STRUCT_API) 
			-- Set member `id`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_id (item, a_value.item)
		ensure
			id_set: id.item = a_value.item
		end

	path:  detachable C_STRING
			-- Access member `path`
		require
			exists: exists
		do
			if attached c_path (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_path (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_path (a_value: C_STRING) 
			-- Change the value of member `path` to `a_value`.
		require
			exists: exists
		do
			set_c_path (item, a_value.item )
		end

	size: INTEGER
			-- Access member `size`
		require
			exists: exists
		do
			Result := c_size (item)
		ensure
			result_correct: Result = c_size (item)
		end

	set_size (a_value: INTEGER) 
			-- Change the value of member `size` to `a_value`.
		require
			exists: exists
		do
			set_c_size (item, a_value)
		ensure
			size_set: a_value = size
		end

	flags: INTEGER
			-- Access member `flags`
		require
			exists: exists
		do
			Result := c_flags (item)
		ensure
			result_correct: Result = c_flags (item)
		end

	set_flags (a_value: INTEGER) 
			-- Change the value of member `flags` to `a_value`.
		require
			exists: exists
		do
			set_c_flags (item, a_value)
		ensure
			flags_set: a_value = flags
		end

	mode: INTEGER
			-- Access member `mode`
		require
			exists: exists
		do
			Result := c_mode (item)
		ensure
			result_correct: Result = c_mode (item)
		end

	set_mode (a_value: INTEGER) 
			-- Change the value of member `mode` to `a_value`.
		require
			exists: exists
		do
			set_c_mode (item, a_value)
		ensure
			mode_set: a_value = mode
		end

	id_abbrev: INTEGER
			-- Access member `id_abbrev`
		require
			exists: exists
		do
			Result := c_id_abbrev (item)
		ensure
			result_correct: Result = c_id_abbrev (item)
		end

	set_id_abbrev (a_value: INTEGER) 
			-- Change the value of member `id_abbrev` to `a_value`.
		require
			exists: exists
		do
			set_c_id_abbrev (item, a_value)
		ensure
			id_abbrev_set: a_value = id_abbrev
		end

feature {NONE} -- Implementation wrapper for struct git_diff_file

	sizeof_external: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"sizeof(git_diff_file)"
		end

	c_id (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_diff_file*)$an_item)->id
			]"
		end

	set_c_id (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->id =  *(git_oid*)$a_value
			]"
		end

	c_path (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->path
			]"
		end

	set_c_path (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->path =  (char const*)$a_value
			]"
		ensure
			path_set: a_value = c_path (an_item)
		end

	c_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->size
			]"
		end

	set_c_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->size =  (git_object_size_t)$a_value
			]"
		ensure
			size_set: a_value = c_size (an_item)
		end

	c_flags (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->flags
			]"
		end

	set_c_flags (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->flags =  (uint32_t)$a_value
			]"
		ensure
			flags_set: a_value = c_flags (an_item)
		end

	c_mode (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->mode
			]"
		end

	set_c_mode (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->mode =  (uint16_t)$a_value
			]"
		ensure
			mode_set: a_value = c_mode (an_item)
		end

	c_id_abbrev (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->id_abbrev
			]"
		end

	set_c_id_abbrev (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_file*)$an_item)->id_abbrev =  (uint16_t)$a_value
			]"
		ensure
			id_abbrev_set: a_value = c_id_abbrev (an_item)
		end

end
