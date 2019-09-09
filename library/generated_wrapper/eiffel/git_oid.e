note
	description: "Summary description for {GIT_OID}."
	date: "$Date$"
	revision: "$Revision$"

class
	GIT_OID

inherit

	GIT_OID_API
		rename
			git_oid_fromstr as git_oid_fromstr_api
		end


feature -- Access

	git_oid_fromstr (a_out: GIT_OID_STRUCT_API; str: STRING): INTEGER
		local
			str_c_string: C_STRING
			l_ptr: POINTER
		do
			create str_c_string.make (str)
			Result := c_git_oid_fromstr (a_out.item, str_c_string.item)
		end

end
