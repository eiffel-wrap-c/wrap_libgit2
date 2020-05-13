note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_OID_SET

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		local
			init: INTEGER
		do
			init := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			assert ("Expected 1 number of initialization of libgit2", init = 1)
		end

	on_clean
			-- <Precursor>
		local
			init: INTEGER
		do
			init := {LIBGIT2_INITIALIZER_API}.git_libgit2_shutdown
			assert ("Expected 0 number of remaining initialization of libgit2", init = 0)
		end

feature -- Test routines

	test_sha_oid
			-- New test routine
		local
			sha: STRING
			oid: GIT_OID_STRUCT_API
			error: INTEGER
			mp: MANAGED_POINTER
		do
				-- SHA-1 hashes are usually written as 40 characters of hexadecimal. These are converted to a binary representation internally, called git_oid, and there are routines for converting back and forth.
			sha := "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"
			create oid.make
			error := {GIT_OID}.git_oid_fromstr (oid, sha)
			assert ("Expected error=0", error =0)
			create mp.make_from_pointer (oid.id, 20)
		end
end


