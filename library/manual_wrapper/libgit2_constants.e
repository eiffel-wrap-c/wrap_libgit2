note
	description: "Summary description for {LIBGIT2_CONSTANTS}."
	date: "$Date$"
	revision: "$Revision$"

class
	LIBGIT2_CONSTANTS

feature -- Access

	GIT_STATUS_OPTIONS_VERSION: INTEGER = 1

	GIT_STATUS_OPTIONS_INIT: INTEGER
		do
			Result := GIT_STATUS_OPTIONS_VERSION
		ensure
			is_class: class
		end


	GIT_OID_HEXSZ: INTEGER
		external
			"C inline use <git2.h>"
		alias
			"GIT_OID_HEXSZ"
		end

	-- TODO wrap LIBGIT2 constants with WrapC	


--	/** Size (in bytes) of a raw/binary oid */
--#define GIT_OID_RAWSZ 20

--/** Size (in bytes) of a hex formatted oid */
--#define GIT_OID_HEXSZ (GIT_OID_RAWSZ * 2)

--/** Minimum length (in number of hex characters,
-- * i.e. packets of 4 bits) of an oid prefix */
--#define GIT_OID_MINPREFIXLEN 4


end
