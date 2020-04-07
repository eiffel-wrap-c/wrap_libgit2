note
	description: "Summary description for {PROGRESS_DATA}."
	date: "$Date$"
	revision: "$Revision$"

class
	PROGRESS_DATA


create

	make,
	make_by_pointer


feature -- Intialization

	make
		do
			create managed_data.make (structure_size)
			set_fetch_progress (create {GIT_INDEXER_PROGRESS_STRUCT_API}.make )
		end

	make_by_pointer (a_pointer: POINTER)
		do
			create managed_data.make_from_pointer (a_pointer, structure_size)
		end

feature -- Access

	fetch_progress: detachable GIT_INDEXER_PROGRESS_STRUCT_API
		local
			l_ptr: POINTER
		do
			l_ptr := managed_data.read_pointer (0)
			if l_ptr /= default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		end

	completed_steps: INTEGER_32
		do
			Result := managed_data.read_integer_32 ({PLATFORM}.pointer_bytes)
		end

	total_steps: INTEGER_32
		do
			Result := managed_data.read_integer_32 ({PLATFORM}.pointer_bytes + {PLATFORM}.integer_32_bytes )
		end

	path: detachable STRING
		local
			l_ptr: POINTER
		do
			l_ptr := managed_data.read_pointer ({PLATFORM}.pointer_bytes + {PLATFORM}.integer_32_bytes + {PLATFORM}.integer_32_bytes)
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		end

feature -- Set Element

	set_fetch_progress (a_progress: GIT_INDEXER_PROGRESS_STRUCT_API)
		do
			managed_data.put_pointer (a_progress.item, 0)
		end

    set_completed_steps (a_steps: INTEGER)
		do
			managed_data.put_integer_32 (a_steps, {PLATFORM}.pointer_bytes)
		end

	set_total_steps (a_steps: INTEGER)
		do
			managed_data.put_integer_32 (a_steps, {PLATFORM}.pointer_bytes + {PLATFORM}.integer_32_bytes)
		end

	set_path (a_path: STRING)
   		do
   			managed_data.put_pointer (a_path.area.base_address, {PLATFORM}.pointer_bytes + {PLATFORM}.integer_32_bytes + {PLATFORM}.integer_32_bytes)
   		end


	structure_size: INTEGER
		do
			Result := {PLATFORM}.pointer_bytes + {PLATFORM}.integer_32_bytes + {PLATFORM}.integer_32_bytes + {PLATFORM}.pointer_bytes
		end

feature -- Measurement

	managed_data: MANAGED_POINTER


	item: POINTER
		do
			Result := managed_data.item
		end

end
