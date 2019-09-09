-- enum wrapper
class GIT_REMOTE_AUTOTAG_OPTION_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_remote_download_tags_unspecified or a_value = git_remote_download_tags_auto or a_value = git_remote_download_tags_none or a_value = git_remote_download_tags_all
		end

	git_remote_download_tags_unspecified: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED"
		end

	git_remote_download_tags_auto: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_DOWNLOAD_TAGS_AUTO"
		end

	git_remote_download_tags_none: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_DOWNLOAD_TAGS_NONE"
		end

	git_remote_download_tags_all: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_REMOTE_DOWNLOAD_TAGS_ALL"
		end

end
