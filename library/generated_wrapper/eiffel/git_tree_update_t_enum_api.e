-- enum wrapper
class GIT_TREE_UPDATE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = git_tree_update_upsert or a_value = git_tree_update_remove
		end

	git_tree_update_upsert: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_TREE_UPDATE_UPSERT"
		end

	git_tree_update_remove: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"GIT_TREE_UPDATE_REMOVE"
		end

end
