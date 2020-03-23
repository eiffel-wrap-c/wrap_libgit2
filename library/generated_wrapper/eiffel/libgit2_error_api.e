note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class LIBGIT2_ERROR_API


feature -- Access

	git_error_last: detachable GIT_ERROR_STRUCT_API 
		do
			if attached c_git_error_last as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_error_clear
		external
			"C inline use <git2.h>"
		alias
			"[
				git_error_clear ();
			]"
		end

	git_error_set_str (error_class: INTEGER; string: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_error_set_str ((int)$error_class, (char const*)$string);
			]"
		end

	git_error_set_oom
		external
			"C inline use <git2.h>"
		alias
			"[
				git_error_set_oom ();
			]"
		end

feature -- Externals

	c_git_error_last: POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_error_last ();
			]"
		end

feature -- Externals Address

end
