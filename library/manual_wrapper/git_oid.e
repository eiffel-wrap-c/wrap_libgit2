note
	description: "Object representing OID functions"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=Oid functions", "src=https://libgit2.org/libgit2/#v1.0.0/group/oid", "protocol=uri"

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
		note
			eis: "name=git_oid_fromstr", "src=https://libgit2.org/libgit2/#v1.0.0/group/oid/git_oid_fromstr", "protocol=uri"
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_fromstr (a_out.item, str_c_string.item)
		ensure
			instance_free: class
		end

	git_oid_fmt (a_out: STRING; id: GIT_OID_STRUCT_API)
			-- Format a git_oid into a hex string.
		note
			eis: "name=git_oid_fmt", "src=https://libgit2.org/libgit2/#v1.0.0/group/oid/git_oid_fmt", "protocol=uri"
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
		ensure
			instance_free: class
		end


end
