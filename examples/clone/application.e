note
	description: "[
		libgit2 "clone" example -  shows how to perform clone.
		]"
	EIS: "name=git clone", "src=https://github.com/libgit2/libgit2/blob/master/examples/clone.c","protocol=uri"

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
			create path.make_empty
			create url.make_empty
			make_command_line_parser
			process_arguments
			clone_repository
		end


feature -- Intiialize Repository

	clone_repository
		local
			ini: INTEGER
			error: INTEGER
			cloned_repo: GIT_REPOSITORY_STRUCT_API
			clone_opts: GIT_CLONE_OPTIONS_STRUCT_API
			checkout_opts: GIT_CHECKOUT_OPTIONS_STRUCT_API
			git_clone: GIT_CLONE
			git_checkout: GIT_CHECKOUT_API
			git_checkout_progress_cb: GIT_CHECKOUT_PROGRESS_CB_DISPATCHER
			git_transport_message_cb: GIT_TRANSPORT_MESSAGE_CB_DISPATCHER
			pd: PROGRESS_DATA
			git_indexer_progress_cb: GIT_INDEXER_PROGRESS_CB_DISPATCHER
			git_credential_acquire_cb: GIT_CREDENTIAL_ACQUIRE_CB_DISPATCHER
			git_error: LIBGIT2_ERROR_API
			l_ptr:POINTER

		do
			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			debug
				print ("%N Intializing Libgit2")
			end

			create clone_opts.make
			create checkout_opts.make
			create git_clone
			create git_checkout

			error := git_clone.git_clone_init_options (clone_opts, 1)
			error := git_checkout.git_checkout_options_init (checkout_opts, 1)

			-- Setup options

			create pd.make
			create git_checkout_progress_cb.make
			git_checkout_progress_cb.register_callback_1 (agent checkout_progress)

			checkout_opts.set_checkout_strategy ({GIT_CHECKOUT_STRATEGY_T_ENUM_API}.GIT_CHECKOUT_SAFE)
			checkout_opts.set_progress_cb (git_checkout_progress_cb.c_dispatcher_1)
			checkout_opts.set_progress_payload (pd.item)

			create git_transport_message_cb.make
			git_transport_message_cb.register_callback_1 (agent sideband_progress)

			create git_indexer_progress_cb.make
			git_indexer_progress_cb.register_callback_1 (agent fetch_progress )

			create git_credential_acquire_cb.make
			git_credential_acquire_cb.register_callback_1 (agent cred_acquire_cb )

			clone_opts.set_checkout_opts (checkout_opts)
			clone_opts.fetch_opts.callbacks.set_sideband_progress (git_transport_message_cb.c_dispatcher_1)
			clone_opts.fetch_opts.callbacks.set_transfer_progress (git_indexer_progress_cb.c_dispatcher_1)
			clone_opts.fetch_opts.callbacks.set_credentials (git_credential_acquire_cb.c_dispatcher_1)
			clone_opts.fetch_opts.callbacks.set_payload (pd.item)

			create cloned_repo.make

			error := git_clone.git_clone (cloned_repo, url, path,  clone_opts)
			print ("%N")
			if error /= 0 then
				create git_error
				if attached {GIT_ERROR_STRUCT_API} git_error.git_error_last as last_error and then
					attached last_error.message as l_message
				then
					print ("%NERROR " + last_error.klass.out + " : " + l_message + "%N")
				else
					print("%NERROR Can't clone the repository: " + url + "%N")
				end
				{EXCEPTIONS}.die (1)
			else
				git_repository.git_repository_free(cloned_repo);
			end

			ini := {LIBGIT2_INITIALIZER_API}.git_libgit2_shutdown
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
				#ifdef _WIN32
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
				#else
					#include <unistd.h>
					char *password = getpass("");
					return password;
				#endif
			]"
		end


	print_progress (pd: PROGRESS_DATA)
		local
			network_percent: INTEGER
			index_percent: INTEGER
			checkout_percent: INTEGER
			kbytes: INTEGER
			l_path : STRING
		do
			if attached pd.path as ll_path then
				l_path := ll_path
			else
				l_path := ""
			end
			if attached pd.fetch_progress as l_fetch_progress and then
				l_fetch_progress.total_objects > 0
			then
				network_percent := (100 * l_fetch_progress.received_objects) // l_fetch_progress.total_objects
			else
				network_percent := 0
			end

			if attached pd.fetch_progress as l_fetch_progress and then
				l_fetch_progress.total_objects > 0
			then
				index_percent := (100 * l_fetch_progress.indexed_objects) // l_fetch_progress.total_objects
			else
				index_percent := 0
			end


			if pd.total_steps > 0 then
				checkout_percent := (100 * pd.completed_steps) // pd.total_steps
			end

			if attached pd.fetch_progress as l_fetch_progress then
				kbytes := l_fetch_progress.received_bytes // 1024
			else
				kbytes := 0
			end

			if attached pd.fetch_progress as l_fetch_progress then
				if
					l_fetch_progress.total_objects > 0 and then
					l_fetch_progress.total_objects = l_fetch_progress.received_objects
				then
					print ("Resolving Detlas " + l_fetch_progress.indexed_deltas.out + "/" + l_fetch_progress.total_deltas.out + "%N")
				else
					print ("net :[" +network_percent.out +"] (" + kbytes.out+ " PRIuZ kb, " + l_fetch_progress.received_objects.out + "/" + l_fetch_progress.total_objects.out +")  / idx " +index_percent.out + "(" +
						l_fetch_progress.indexed_objects.out + "/" + l_fetch_progress.total_objects.out + ") / chk " + checkout_percent.out + " ( " + pd.completed_steps.out + "PRIuZ /" + pd.total_steps.out + "PRIuZ) " + l_path + "%N")
				end
			end
		end

	checkout_progress (a_path: POINTER; a_completed_steps: INTEGER; a_total_steps: INTEGER; a_payload: POINTER)
		local
			pd: PROGRESS_DATA
		do
			create pd.make_by_pointer (a_payload)
			pd.set_completed_steps (a_completed_steps)
			pd.set_total_steps (a_total_steps)
			if a_path /= default_pointer then
				pd.set_path (create {STRING}.make_from_c (a_path))
			end
			print_progress (pd)
		end


	sideband_progress (a_str: POINTER; a_len: INTEGER_32; a_payload: POINTER): INTEGER
		local
			l_str: STRING
		do
			if a_str /= default_pointer then
				create l_str.make_from_c (a_str)
			else
				l_str := ""
			end
			print ("%NRemote: " + a_len.out + "%N" +  l_str +"%N")
			Result := 0
		end


	fetch_progress(a_stats: POINTER; a_payload: POINTER): INTEGER
		local
			pd: PROGRESS_DATA
		do
			create pd.make_by_pointer (a_payload)
			pd.set_fetch_progress ((create {GIT_INDEXER_PROGRESS_STRUCT_API}.make_by_pointer (a_stats)))
			print_progress (pd)
			Result := 0
		end


feature	{NONE} -- Process Arguments


	process_arguments
			-- Process command line arguments
		local
			shared_value: STRING
		do
			if match_long_option ("url") then
				if is_next_option_long_option and then has_next_option_value then
					create url.make_from_string (next_option_value)
					consume_option
				end
			end

			if match_long_option ("path") then
				if is_next_option_long_option and then has_next_option_value then
					create path.make_from_string (next_option_value)
					consume_option
				end
			end

			if  url.is_empty or else path.is_empty then
				print("%N Bad command line parameters <clone>%N")
				usage
				{EXCEPTIONS}.die (1)
			end
		end

	usage
		local
			str: STRING
		do
			str := "[
				git_clone 
					[--url]: repository url
					[--path]: path
			]"

			print("%N")
			print (str)
			print("%N")
		end

feature -- Options


	git_repository: LIBGIT2_REPOSITORY
	path: STRING
	url:  STRING

end
