-- enum wrapper
class GIT_ERROR_CODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_ok or a_value = git_error or a_value = git_enotfound or a_value = git_eexists or a_value = git_eambiguous or a_value = git_ebufs or a_value = git_euser or a_value = git_ebarerepo or a_value = git_eunbornbranch or a_value = git_eunmerged or a_value = git_enonfastforward or a_value = git_einvalidspec or a_value = git_econflict or a_value = git_elocked or a_value = git_emodified or a_value = git_eauth or a_value = git_ecertificate or a_value = git_eapplied or a_value = git_epeel or a_value = git_eeof or a_value = git_einvalid or a_value = git_euncommitted or a_value = git_edirectory or a_value = git_emergeconflict or a_value = git_passthrough or a_value = git_iterover or a_value = git_retry or a_value = git_emismatch or a_value = git_eindexdirty or a_value = git_eapplyfail
		end

	git_ok: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_OK"
		end

	git_error: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ERROR"
		end

	git_enotfound: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ENOTFOUND"
		end

	git_eexists: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EEXISTS"
		end

	git_eambiguous: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EAMBIGUOUS"
		end

	git_ebufs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EBUFS"
		end

	git_euser: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EUSER"
		end

	git_ebarerepo: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EBAREREPO"
		end

	git_eunbornbranch: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EUNBORNBRANCH"
		end

	git_eunmerged: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EUNMERGED"
		end

	git_enonfastforward: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ENONFASTFORWARD"
		end

	git_einvalidspec: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EINVALIDSPEC"
		end

	git_econflict: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ECONFLICT"
		end

	git_elocked: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ELOCKED"
		end

	git_emodified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EMODIFIED"
		end

	git_eauth: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EAUTH"
		end

	git_ecertificate: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ECERTIFICATE"
		end

	git_eapplied: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EAPPLIED"
		end

	git_epeel: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EPEEL"
		end

	git_eeof: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EEOF"
		end

	git_einvalid: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EINVALID"
		end

	git_euncommitted: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EUNCOMMITTED"
		end

	git_edirectory: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EDIRECTORY"
		end

	git_emergeconflict: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EMERGECONFLICT"
		end

	git_passthrough: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_PASSTHROUGH"
		end

	git_iterover: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_ITEROVER"
		end

	git_retry: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_RETRY"
		end

	git_emismatch: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EMISMATCH"
		end

	git_eindexdirty: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EINDEXDIRTY"
		end

	git_eapplyfail: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_EAPPLYFAIL"
		end

end
