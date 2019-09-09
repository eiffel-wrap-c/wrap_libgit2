-- enum wrapper
class GIT_INDEX_STAGE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_index_stage_any or a_value = git_index_stage_normal or a_value = git_index_stage_ancestor or a_value = git_index_stage_ours or a_value = git_index_stage_theirs
		end

	git_index_stage_any: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_INDEX_STAGE_ANY"
		end

	git_index_stage_normal: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_INDEX_STAGE_NORMAL"
		end

	git_index_stage_ancestor: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_INDEX_STAGE_ANCESTOR"
		end

	git_index_stage_ours: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_INDEX_STAGE_OURS"
		end

	git_index_stage_theirs: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_INDEX_STAGE_THEIRS"
		end

end
