note
	description: "[
			libgit2 "ls_remote" example - shows how to list remote references
		]"

class APPLICATION

inherit

	COMMAND_LINE_PARSER
		rename
			make as make_command_line_parser
		end

create
	make

feature {NONE} --Initialization

	make

		do
			create git_repository
			path := "."
			remote := ""

			make_command_line_parser
			process_arguments
			show_remote
		end


feature -- Intiialize Repository

	show_remote
		local
			ini: INTEGER
			repo: GIT_REPOSITORY_STRUCT_API
			iniopts: GIT_REPOSITORY_INIT_OPTIONS_STRUCT_API
			l_remote: GIT_REMOTE_STRUCT_API
			git_remote: GIT_REMOTE
			refspec: STRING
			l_options: GIT_PUSH_OPTIONS_STRUCT_API
			a_array: GIT_STRARRAY_STRUCT_API
			callbacks: GIT_REMOTE_CALLBACKS_STRUCT_API
			callback_dispatcher: GIT_CREDENTIAL_ACQUIRE_CB_DISPATCHER
			refs: ARRAYED_LIST [GIT_REMOTE_HEAD_STRUCT_API]
			ref_len: INTEGER
			git_oid: GIT_OID
			oid: STRING

		do
			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			print ("%NIntializing Libgit2")
			create repo.make

			if git_repository.git_repository_open (repo, (create {PATH}.make_from_string (path)).out) < 0 then
				print ("%NCould not open repository")
				{EXCEPTIONS}.die (1)
			end

				-- get the remote
			create l_remote.make

			create git_remote
			if git_remote.git_remote_lookup (l_remote, repo, remote) < 0 then
				if git_remote.git_remote_create_anonymous (l_remote, repo, remote) < 0 then
					print ("%NCould not get remote repository " + remote)
					{EXCEPTIONS}.die (1)
				end
			end

			create callbacks.make
			if git_remote.git_remote_init_callbacks (callbacks, 1) < 0 then
				print ("%NCould not intialize callback ")
				{EXCEPTIONS}.die (1)
			end

			create callback_dispatcher.make
			callback_dispatcher.register_callback_1(agent cred_acquire_cb )
			callbacks.set_credentials (callback_dispatcher.c_dispatcher_1)

				-- connect to remote
			if git_remote.git_remote_connect (l_remote, {GIT_DIRECTION_ENUM_API}.git_direction_fetch, callbacks, Void, Void) < 0 then
				print ("%NCould not connect to remote repository " + remote)
				{EXCEPTIONS}.die (1)
			end

			create refs.make (1)
				-- Get the list of references on the remote and print out
				-- their name next to what they point to.

			if git_remote.git_remote_ls (refs, l_remote) < 0 then
				print ("%NCould not get the remote repository's reference advertisement list")
				{EXCEPTIONS}.die (1)
			end

			create git_oid
			from
				refs.start
			until
				refs.after
			loop
				create oid.make ({LIBGIT2_CONSTANTS}.GIT_OID_HEXSZ + 1)
				if attached refs.item_for_iteration.oid as l_oid then
					git_oid.git_oid_fmt (oid, l_oid)
					if attached refs.item_for_iteration.name as l_name then
						print("%N" + oid.substring (1, {LIBGIT2_CONSTANTS}.GIT_OID_HEXSZ) +"%T" + l_name )
					else
						print("%N" + oid +"%T")
					end
				end
				refs.forth

			end
			git_repository.git_repository_free (repo)
			git_remote.git_remote_free (l_remote)
			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_shutdown
			io.read_line
		end

	init_array (a_array: GIT_STRARRAY_STRUCT_API; l_array: ARRAY [STRING])
		local
			mp: MANAGED_POINTER
		do
			create mp.make (l_array.count * {PLATFORM}.pointer_bytes)
			across l_array as ic  loop
				mp.put_pointer ((create {C_STRING}.make (ic.item)).item, (ic.cursor_index - 1) * {PLATFORM}.pointer_bytes )
			end
			a_array.set_count (l_array.count)
			a_array.set_strings (mp.item)
		end

	cred_acquire_cb (a_cred: POINTER; a_url: POINTER; a_username_from_url: POINTER; a_allowed_types: INTEGER; a_payload: POINTER): INTEGER
		local
			l_user_name: STRING
			exit: BOOLEAN
			cred: GIT_CREDENTIAL_STRUCT_API
			git_cred: GIT_CREDENTIALS_API
			l_password: STRING
			l_privkey: STRING
			l_pubkey: STRING
		do

			if a_username_from_url /= default_pointer then
				l_user_name := (create {C_STRING}.make_by_pointer (a_username_from_url)).string
				exit := l_user_name.is_empty
			else
				print ("%NUsername:")
				io.read_line
				l_user_name := io.last_string.twin
				exit := l_user_name.is_empty
			end

			if not exit and then a_allowed_types & {GIT_CREDENTIAL_T_ENUM_API}.git_credential_ssh_key > 0 then
				print ("%NSSH key:")
				io.read_line
				l_privkey := io.last_string.twin
				print ("%NPassword:")
				l_password := read_password
				if l_password.is_empty or l_privkey.is_empty then
					exit := True
				end
				create l_pubkey.make_from_string (l_password)
				l_pubkey.append_string (".pub")
				create git_cred
				create cred.make_by_pointer (a_cred)
				Result := git_cred.git_cred_ssh_key_new(cred, l_user_name, l_pubkey, l_privkey, l_password)
			elseif not exit and then a_allowed_types & {GIT_CREDENTIAL_T_ENUM_API}.git_credential_userpass_plaintext > 0 then
				print ("%NPassword:")
				l_password := read_password
				exit := l_password.is_empty
				if not exit then
					create git_cred
					create cred.make_by_pointer (a_cred)
					Result := git_cred.git_cred_userpass_plaintext_new(cred, l_user_name, l_password)
				end
			else
				if not exit then
					create git_cred
					create cred.make_by_pointer (a_cred)
					Result := git_cred.git_cred_username_new (cred, l_user_name)
				end
			end
		end

feature	{NONE} -- Process Arguments

	process_arguments
			-- Process command line arguments
		local
			shared_value: STRING
		do
			if match_long_option ("git-dir") then
				if is_next_option_long_option and then has_next_option_value then
					create path.make_from_string (next_option_value)
					consume_option
				else
					print("%N Missing command line parameter --git-dir=<dir>")
					usage
					{EXCEPTIONS}.die (1)
				end
			end
			if  has_next_option and then not is_next_option_long_option then
				create remote.make_from_string (next_option)
				consume_option
			else
				print("%N Missing command line parameter <remote>%N")
				usage
				{EXCEPTIONS}.die (1)
			end
		end

	usage
		local
			str: STRING
		do
			str := "[
				lxs [--git-dir=<directory>]
				<remote>
				]"

			print("%N")
			print (str)
		end

	read_password: STRING
		local
			l_ptr: POINTER
		do
		 	l_ptr := c_read_password
		 	if l_ptr /= default_pointer then
		 		Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
		 	else
		 		Result := ""
		 	end
		end

	c_read_password: POINTER
		external "C inline"
		alias
			"[
				#define ENTER 13
				#define TAB 9
				#define BKSP 8

				char* pwd;

				int i = 0;
				char ch;

				while(1){
					ch = getch();	//get key

					if(ch == ENTER || ch == TAB){
						pwd[i] = '\0';
						break;
					}else if(ch == BKSP){
						if(i > 0){
							i--;
							printf("\b \b");		//for backspace
						}
					}else{
						pwd[i++] = ch;
						printf("* \b");				//to replace password character with *
					}
				}//while ends here

				return pwd;
			]"
		end

feature -- Options

	path: STRING
	remote: STRING
	git_repository: LIBGIT2_REPOSITORY

end
