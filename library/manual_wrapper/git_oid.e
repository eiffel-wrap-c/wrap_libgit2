note
	description: "Summary description for {GIT_OID}."
	date: "$Date$"
	revision: "$Revision$"

class
	GIT_OID

inherit

	GIT_OID_API
		rename
			git_oid_fromstr as git_oid_fromstr_api,
			git_oid_fmt as git_oid_fmt_api
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

	git_oid_fmt (a_out: STRING; id: GIT_OID_STRUCT_API)
			-- Format a git_oid into a hex string.
		require
			valid_length: a_out.count = {LIBGIT2_CONSTANTS}.GIT_OID_HEXSZ + 1
			--has_null_terminator: a_out.at (a_out.count).is_equal ('%U')
		local
			l_ret: INTEGER
			c_str: C_STRING
		do
			-- TODO if it's ok to add a precondition to this feature
			--  '\0' terminator must be added by the caller if it is required
			create c_str.make (a_out)
			l_ret := c_git_oid_fmt (c_str.item, id.item)
			a_out.from_c (c_str.item)
		end


end
