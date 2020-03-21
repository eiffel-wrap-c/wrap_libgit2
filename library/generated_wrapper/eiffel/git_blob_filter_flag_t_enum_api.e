-- enum wrapper
class GIT_BLOB_FILTER_FLAG_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_blob_filter_check_for_binary or a_value = git_blob_filter_no_system_attributes or a_value = git_blob_filter_atttributes_from_head
		end

	git_blob_filter_check_for_binary: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_BLOB_FILTER_CHECK_FOR_BINARY"
		end

	git_blob_filter_no_system_attributes: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES"
		end

	git_blob_filter_atttributes_from_head: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD"
		end

end
