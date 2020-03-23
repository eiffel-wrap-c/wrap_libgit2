#include <ewg_eiffel.h>
#include <ewg_libgit2_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* git_index_matched_path_cb_object =  NULL;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_1 = NULL;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_2 = NULL;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_3 = NULL;

void set_git_index_matched_path_cb_object (void* a_object)
{
	if (a_object) {
		git_index_matched_path_cb_object = eif_protect(a_object);
	} else { 
		git_index_matched_path_cb_object = NULL;
	}
}

void release_git_index_matched_path_cb_object ()
{
	eif_wean (git_index_matched_path_cb_object);
}

int git_index_matched_path_cb_stub_1 (char const *path, char const *matched_pathspec, void *payload)
{
	if (git_index_matched_path_cb_object != NULL && git_index_matched_path_cb_address_1 != NULL)
	{
		return git_index_matched_path_cb_address_1 (eif_access(git_index_matched_path_cb_object), path, matched_pathspec, payload);
	}
}

int git_index_matched_path_cb_stub_2 (char const *path, char const *matched_pathspec, void *payload)
{
	if (git_index_matched_path_cb_object != NULL && git_index_matched_path_cb_address_2 != NULL)
	{
		return git_index_matched_path_cb_address_2 (eif_access(git_index_matched_path_cb_object), path, matched_pathspec, payload);
	}
}

int git_index_matched_path_cb_stub_3 (char const *path, char const *matched_pathspec, void *payload)
{
	if (git_index_matched_path_cb_object != NULL && git_index_matched_path_cb_address_3 != NULL)
	{
		return git_index_matched_path_cb_address_3 (eif_access(git_index_matched_path_cb_object), path, matched_pathspec, payload);
	}
}

void set_git_index_matched_path_cb_entry_1 (void* a_feature){
	git_index_matched_path_cb_address_1 = (git_index_matched_path_cb_eiffel_feature) a_feature;
}

void set_git_index_matched_path_cb_entry_2 (void* a_feature){
	git_index_matched_path_cb_address_2 = (git_index_matched_path_cb_eiffel_feature) a_feature;
}

void set_git_index_matched_path_cb_entry_3 (void* a_feature){
	git_index_matched_path_cb_address_3 = (git_index_matched_path_cb_eiffel_feature) a_feature;
}

void* get_git_index_matched_path_cb_stub_1 (){
	return (void*) git_index_matched_path_cb_stub_1;
}

void* get_git_index_matched_path_cb_stub_2 (){
	return (void*) git_index_matched_path_cb_stub_2;
}

void* get_git_index_matched_path_cb_stub_3 (){
	return (void*) git_index_matched_path_cb_stub_3;
}

int call_git_index_matched_path_cb (void *a_function, char const *path, char const *matched_pathspec, void *payload)
{
	return ((int (*) (char const *path, char const *matched_pathspec, void *payload))a_function) (path, matched_pathspec, payload);
}

void* git_status_cb_object =  NULL;
git_status_cb_eiffel_feature git_status_cb_address_1 = NULL;
git_status_cb_eiffel_feature git_status_cb_address_2 = NULL;
git_status_cb_eiffel_feature git_status_cb_address_3 = NULL;

void set_git_status_cb_object (void* a_object)
{
	if (a_object) {
		git_status_cb_object = eif_protect(a_object);
	} else { 
		git_status_cb_object = NULL;
	}
}

void release_git_status_cb_object ()
{
	eif_wean (git_status_cb_object);
}

int git_status_cb_stub_1 (char const *path, unsigned int status_flags, void *payload)
{
	if (git_status_cb_object != NULL && git_status_cb_address_1 != NULL)
	{
		return git_status_cb_address_1 (eif_access(git_status_cb_object), path, status_flags, payload);
	}
}

int git_status_cb_stub_2 (char const *path, unsigned int status_flags, void *payload)
{
	if (git_status_cb_object != NULL && git_status_cb_address_2 != NULL)
	{
		return git_status_cb_address_2 (eif_access(git_status_cb_object), path, status_flags, payload);
	}
}

int git_status_cb_stub_3 (char const *path, unsigned int status_flags, void *payload)
{
	if (git_status_cb_object != NULL && git_status_cb_address_3 != NULL)
	{
		return git_status_cb_address_3 (eif_access(git_status_cb_object), path, status_flags, payload);
	}
}

void set_git_status_cb_entry_1 (void* a_feature){
	git_status_cb_address_1 = (git_status_cb_eiffel_feature) a_feature;
}

void set_git_status_cb_entry_2 (void* a_feature){
	git_status_cb_address_2 = (git_status_cb_eiffel_feature) a_feature;
}

void set_git_status_cb_entry_3 (void* a_feature){
	git_status_cb_address_3 = (git_status_cb_eiffel_feature) a_feature;
}

void* get_git_status_cb_stub_1 (){
	return (void*) git_status_cb_stub_1;
}

void* get_git_status_cb_stub_2 (){
	return (void*) git_status_cb_stub_2;
}

void* get_git_status_cb_stub_3 (){
	return (void*) git_status_cb_stub_3;
}

int call_git_status_cb (void *a_function, char const *path, unsigned int status_flags, void *payload)
{
	return ((int (*) (char const *path, unsigned int status_flags, void *payload))a_function) (path, status_flags, payload);
}

void* git_submodule_cb_object =  NULL;
git_submodule_cb_eiffel_feature git_submodule_cb_address_1 = NULL;
git_submodule_cb_eiffel_feature git_submodule_cb_address_2 = NULL;
git_submodule_cb_eiffel_feature git_submodule_cb_address_3 = NULL;

void set_git_submodule_cb_object (void* a_object)
{
	if (a_object) {
		git_submodule_cb_object = eif_protect(a_object);
	} else { 
		git_submodule_cb_object = NULL;
	}
}

void release_git_submodule_cb_object ()
{
	eif_wean (git_submodule_cb_object);
}

int git_submodule_cb_stub_1 (git_submodule *sm, char const *name, void *payload)
{
	if (git_submodule_cb_object != NULL && git_submodule_cb_address_1 != NULL)
	{
		return git_submodule_cb_address_1 (eif_access(git_submodule_cb_object), sm, name, payload);
	}
}

int git_submodule_cb_stub_2 (git_submodule *sm, char const *name, void *payload)
{
	if (git_submodule_cb_object != NULL && git_submodule_cb_address_2 != NULL)
	{
		return git_submodule_cb_address_2 (eif_access(git_submodule_cb_object), sm, name, payload);
	}
}

int git_submodule_cb_stub_3 (git_submodule *sm, char const *name, void *payload)
{
	if (git_submodule_cb_object != NULL && git_submodule_cb_address_3 != NULL)
	{
		return git_submodule_cb_address_3 (eif_access(git_submodule_cb_object), sm, name, payload);
	}
}

void set_git_submodule_cb_entry_1 (void* a_feature){
	git_submodule_cb_address_1 = (git_submodule_cb_eiffel_feature) a_feature;
}

void set_git_submodule_cb_entry_2 (void* a_feature){
	git_submodule_cb_address_2 = (git_submodule_cb_eiffel_feature) a_feature;
}

void set_git_submodule_cb_entry_3 (void* a_feature){
	git_submodule_cb_address_3 = (git_submodule_cb_eiffel_feature) a_feature;
}

void* get_git_submodule_cb_stub_1 (){
	return (void*) git_submodule_cb_stub_1;
}

void* get_git_submodule_cb_stub_2 (){
	return (void*) git_submodule_cb_stub_2;
}

void* get_git_submodule_cb_stub_3 (){
	return (void*) git_submodule_cb_stub_3;
}

int call_git_submodule_cb (void *a_function, git_submodule *sm, char const *name, void *payload)
{
	return ((int (*) (git_submodule *sm, char const *name, void *payload))a_function) (sm, name, payload);
}

void* git_tag_foreach_cb_object =  NULL;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_1 = NULL;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_2 = NULL;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_3 = NULL;

void set_git_tag_foreach_cb_object (void* a_object)
{
	if (a_object) {
		git_tag_foreach_cb_object = eif_protect(a_object);
	} else { 
		git_tag_foreach_cb_object = NULL;
	}
}

void release_git_tag_foreach_cb_object ()
{
	eif_wean (git_tag_foreach_cb_object);
}

int git_tag_foreach_cb_stub_1 (char const *name, git_oid *oid, void *payload)
{
	if (git_tag_foreach_cb_object != NULL && git_tag_foreach_cb_address_1 != NULL)
	{
		return git_tag_foreach_cb_address_1 (eif_access(git_tag_foreach_cb_object), name, oid, payload);
	}
}

int git_tag_foreach_cb_stub_2 (char const *name, git_oid *oid, void *payload)
{
	if (git_tag_foreach_cb_object != NULL && git_tag_foreach_cb_address_2 != NULL)
	{
		return git_tag_foreach_cb_address_2 (eif_access(git_tag_foreach_cb_object), name, oid, payload);
	}
}

int git_tag_foreach_cb_stub_3 (char const *name, git_oid *oid, void *payload)
{
	if (git_tag_foreach_cb_object != NULL && git_tag_foreach_cb_address_3 != NULL)
	{
		return git_tag_foreach_cb_address_3 (eif_access(git_tag_foreach_cb_object), name, oid, payload);
	}
}

void set_git_tag_foreach_cb_entry_1 (void* a_feature){
	git_tag_foreach_cb_address_1 = (git_tag_foreach_cb_eiffel_feature) a_feature;
}

void set_git_tag_foreach_cb_entry_2 (void* a_feature){
	git_tag_foreach_cb_address_2 = (git_tag_foreach_cb_eiffel_feature) a_feature;
}

void set_git_tag_foreach_cb_entry_3 (void* a_feature){
	git_tag_foreach_cb_address_3 = (git_tag_foreach_cb_eiffel_feature) a_feature;
}

void* get_git_tag_foreach_cb_stub_1 (){
	return (void*) git_tag_foreach_cb_stub_1;
}

void* get_git_tag_foreach_cb_stub_2 (){
	return (void*) git_tag_foreach_cb_stub_2;
}

void* get_git_tag_foreach_cb_stub_3 (){
	return (void*) git_tag_foreach_cb_stub_3;
}

int call_git_tag_foreach_cb (void *a_function, char const *name, git_oid *oid, void *payload)
{
	return ((int (*) (char const *name, git_oid *oid, void *payload))a_function) (name, oid, payload);
}

void* git_checkout_progress_cb_object =  NULL;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_1 = NULL;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_2 = NULL;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_3 = NULL;

void set_git_checkout_progress_cb_object (void* a_object)
{
	if (a_object) {
		git_checkout_progress_cb_object = eif_protect(a_object);
	} else { 
		git_checkout_progress_cb_object = NULL;
	}
}

void release_git_checkout_progress_cb_object ()
{
	eif_wean (git_checkout_progress_cb_object);
}

void git_checkout_progress_cb_stub_1 (char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	if (git_checkout_progress_cb_object != NULL && git_checkout_progress_cb_address_1 != NULL)
	{
		git_checkout_progress_cb_address_1 (eif_access(git_checkout_progress_cb_object), path, completed_steps, total_steps, payload);
	}
}

void git_checkout_progress_cb_stub_2 (char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	if (git_checkout_progress_cb_object != NULL && git_checkout_progress_cb_address_2 != NULL)
	{
		git_checkout_progress_cb_address_2 (eif_access(git_checkout_progress_cb_object), path, completed_steps, total_steps, payload);
	}
}

void git_checkout_progress_cb_stub_3 (char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	if (git_checkout_progress_cb_object != NULL && git_checkout_progress_cb_address_3 != NULL)
	{
		git_checkout_progress_cb_address_3 (eif_access(git_checkout_progress_cb_object), path, completed_steps, total_steps, payload);
	}
}

void set_git_checkout_progress_cb_entry_1 (void* a_feature){
	git_checkout_progress_cb_address_1 = (git_checkout_progress_cb_eiffel_feature) a_feature;
}

void set_git_checkout_progress_cb_entry_2 (void* a_feature){
	git_checkout_progress_cb_address_2 = (git_checkout_progress_cb_eiffel_feature) a_feature;
}

void set_git_checkout_progress_cb_entry_3 (void* a_feature){
	git_checkout_progress_cb_address_3 = (git_checkout_progress_cb_eiffel_feature) a_feature;
}

void* get_git_checkout_progress_cb_stub_1 (){
	return (void*) git_checkout_progress_cb_stub_1;
}

void* get_git_checkout_progress_cb_stub_2 (){
	return (void*) git_checkout_progress_cb_stub_2;
}

void* get_git_checkout_progress_cb_stub_3 (){
	return (void*) git_checkout_progress_cb_stub_3;
}

void call_git_checkout_progress_cb (void *a_function, char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	((void (*) (char const *path, size_t completed_steps, size_t total_steps, void *payload))a_function) (path, completed_steps, total_steps, payload);
}

void* git_checkout_perfdata_cb_object =  NULL;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_1 = NULL;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_2 = NULL;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_3 = NULL;

void set_git_checkout_perfdata_cb_object (void* a_object)
{
	if (a_object) {
		git_checkout_perfdata_cb_object = eif_protect(a_object);
	} else { 
		git_checkout_perfdata_cb_object = NULL;
	}
}

void release_git_checkout_perfdata_cb_object ()
{
	eif_wean (git_checkout_perfdata_cb_object);
}

void git_checkout_perfdata_cb_stub_1 (git_checkout_perfdata const *perfdata, void *payload)
{
	if (git_checkout_perfdata_cb_object != NULL && git_checkout_perfdata_cb_address_1 != NULL)
	{
		git_checkout_perfdata_cb_address_1 (eif_access(git_checkout_perfdata_cb_object), perfdata, payload);
	}
}

void git_checkout_perfdata_cb_stub_2 (git_checkout_perfdata const *perfdata, void *payload)
{
	if (git_checkout_perfdata_cb_object != NULL && git_checkout_perfdata_cb_address_2 != NULL)
	{
		git_checkout_perfdata_cb_address_2 (eif_access(git_checkout_perfdata_cb_object), perfdata, payload);
	}
}

void git_checkout_perfdata_cb_stub_3 (git_checkout_perfdata const *perfdata, void *payload)
{
	if (git_checkout_perfdata_cb_object != NULL && git_checkout_perfdata_cb_address_3 != NULL)
	{
		git_checkout_perfdata_cb_address_3 (eif_access(git_checkout_perfdata_cb_object), perfdata, payload);
	}
}

void set_git_checkout_perfdata_cb_entry_1 (void* a_feature){
	git_checkout_perfdata_cb_address_1 = (git_checkout_perfdata_cb_eiffel_feature) a_feature;
}

void set_git_checkout_perfdata_cb_entry_2 (void* a_feature){
	git_checkout_perfdata_cb_address_2 = (git_checkout_perfdata_cb_eiffel_feature) a_feature;
}

void set_git_checkout_perfdata_cb_entry_3 (void* a_feature){
	git_checkout_perfdata_cb_address_3 = (git_checkout_perfdata_cb_eiffel_feature) a_feature;
}

void* get_git_checkout_perfdata_cb_stub_1 (){
	return (void*) git_checkout_perfdata_cb_stub_1;
}

void* get_git_checkout_perfdata_cb_stub_2 (){
	return (void*) git_checkout_perfdata_cb_stub_2;
}

void* get_git_checkout_perfdata_cb_stub_3 (){
	return (void*) git_checkout_perfdata_cb_stub_3;
}

void call_git_checkout_perfdata_cb (void *a_function, git_checkout_perfdata const *perfdata, void *payload)
{
	((void (*) (git_checkout_perfdata const *perfdata, void *payload))a_function) (perfdata, payload);
}

void* git_indexer_progress_cb_object =  NULL;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_1 = NULL;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_2 = NULL;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_3 = NULL;

void set_git_indexer_progress_cb_object (void* a_object)
{
	if (a_object) {
		git_indexer_progress_cb_object = eif_protect(a_object);
	} else { 
		git_indexer_progress_cb_object = NULL;
	}
}

void release_git_indexer_progress_cb_object ()
{
	eif_wean (git_indexer_progress_cb_object);
}

int git_indexer_progress_cb_stub_1 (git_indexer_progress const *stats, void *payload)
{
	if (git_indexer_progress_cb_object != NULL && git_indexer_progress_cb_address_1 != NULL)
	{
		return git_indexer_progress_cb_address_1 (eif_access(git_indexer_progress_cb_object), stats, payload);
	}
}

int git_indexer_progress_cb_stub_2 (git_indexer_progress const *stats, void *payload)
{
	if (git_indexer_progress_cb_object != NULL && git_indexer_progress_cb_address_2 != NULL)
	{
		return git_indexer_progress_cb_address_2 (eif_access(git_indexer_progress_cb_object), stats, payload);
	}
}

int git_indexer_progress_cb_stub_3 (git_indexer_progress const *stats, void *payload)
{
	if (git_indexer_progress_cb_object != NULL && git_indexer_progress_cb_address_3 != NULL)
	{
		return git_indexer_progress_cb_address_3 (eif_access(git_indexer_progress_cb_object), stats, payload);
	}
}

void set_git_indexer_progress_cb_entry_1 (void* a_feature){
	git_indexer_progress_cb_address_1 = (git_indexer_progress_cb_eiffel_feature) a_feature;
}

void set_git_indexer_progress_cb_entry_2 (void* a_feature){
	git_indexer_progress_cb_address_2 = (git_indexer_progress_cb_eiffel_feature) a_feature;
}

void set_git_indexer_progress_cb_entry_3 (void* a_feature){
	git_indexer_progress_cb_address_3 = (git_indexer_progress_cb_eiffel_feature) a_feature;
}

void* get_git_indexer_progress_cb_stub_1 (){
	return (void*) git_indexer_progress_cb_stub_1;
}

void* get_git_indexer_progress_cb_stub_2 (){
	return (void*) git_indexer_progress_cb_stub_2;
}

void* get_git_indexer_progress_cb_stub_3 (){
	return (void*) git_indexer_progress_cb_stub_3;
}

int call_git_indexer_progress_cb (void *a_function, git_indexer_progress const *stats, void *payload)
{
	return ((int (*) (git_indexer_progress const *stats, void *payload))a_function) (stats, payload);
}

void* git_transport_message_cb_object =  NULL;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_1 = NULL;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_2 = NULL;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_3 = NULL;

void set_git_transport_message_cb_object (void* a_object)
{
	if (a_object) {
		git_transport_message_cb_object = eif_protect(a_object);
	} else { 
		git_transport_message_cb_object = NULL;
	}
}

void release_git_transport_message_cb_object ()
{
	eif_wean (git_transport_message_cb_object);
}

int git_transport_message_cb_stub_1 (char const *str, int len, void *payload)
{
	if (git_transport_message_cb_object != NULL && git_transport_message_cb_address_1 != NULL)
	{
		return git_transport_message_cb_address_1 (eif_access(git_transport_message_cb_object), str, len, payload);
	}
}

int git_transport_message_cb_stub_2 (char const *str, int len, void *payload)
{
	if (git_transport_message_cb_object != NULL && git_transport_message_cb_address_2 != NULL)
	{
		return git_transport_message_cb_address_2 (eif_access(git_transport_message_cb_object), str, len, payload);
	}
}

int git_transport_message_cb_stub_3 (char const *str, int len, void *payload)
{
	if (git_transport_message_cb_object != NULL && git_transport_message_cb_address_3 != NULL)
	{
		return git_transport_message_cb_address_3 (eif_access(git_transport_message_cb_object), str, len, payload);
	}
}

void set_git_transport_message_cb_entry_1 (void* a_feature){
	git_transport_message_cb_address_1 = (git_transport_message_cb_eiffel_feature) a_feature;
}

void set_git_transport_message_cb_entry_2 (void* a_feature){
	git_transport_message_cb_address_2 = (git_transport_message_cb_eiffel_feature) a_feature;
}

void set_git_transport_message_cb_entry_3 (void* a_feature){
	git_transport_message_cb_address_3 = (git_transport_message_cb_eiffel_feature) a_feature;
}

void* get_git_transport_message_cb_stub_1 (){
	return (void*) git_transport_message_cb_stub_1;
}

void* get_git_transport_message_cb_stub_2 (){
	return (void*) git_transport_message_cb_stub_2;
}

void* get_git_transport_message_cb_stub_3 (){
	return (void*) git_transport_message_cb_stub_3;
}

int call_git_transport_message_cb (void *a_function, char const *str, int len, void *payload)
{
	return ((int (*) (char const *str, int len, void *payload))a_function) (str, len, payload);
}

void* git_credential_acquire_cb_object =  NULL;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_1 = NULL;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_2 = NULL;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_3 = NULL;

void set_git_credential_acquire_cb_object (void* a_object)
{
	if (a_object) {
		git_credential_acquire_cb_object = eif_protect(a_object);
	} else { 
		git_credential_acquire_cb_object = NULL;
	}
}

void release_git_credential_acquire_cb_object ()
{
	eif_wean (git_credential_acquire_cb_object);
}

int git_credential_acquire_cb_stub_1 (git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	if (git_credential_acquire_cb_object != NULL && git_credential_acquire_cb_address_1 != NULL)
	{
		return git_credential_acquire_cb_address_1 (eif_access(git_credential_acquire_cb_object), a_out, url, username_from_url, allowed_types, payload);
	}
}

int git_credential_acquire_cb_stub_2 (git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	if (git_credential_acquire_cb_object != NULL && git_credential_acquire_cb_address_2 != NULL)
	{
		return git_credential_acquire_cb_address_2 (eif_access(git_credential_acquire_cb_object), a_out, url, username_from_url, allowed_types, payload);
	}
}

int git_credential_acquire_cb_stub_3 (git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	if (git_credential_acquire_cb_object != NULL && git_credential_acquire_cb_address_3 != NULL)
	{
		return git_credential_acquire_cb_address_3 (eif_access(git_credential_acquire_cb_object), a_out, url, username_from_url, allowed_types, payload);
	}
}

void set_git_credential_acquire_cb_entry_1 (void* a_feature){
	git_credential_acquire_cb_address_1 = (git_credential_acquire_cb_eiffel_feature) a_feature;
}

void set_git_credential_acquire_cb_entry_2 (void* a_feature){
	git_credential_acquire_cb_address_2 = (git_credential_acquire_cb_eiffel_feature) a_feature;
}

void set_git_credential_acquire_cb_entry_3 (void* a_feature){
	git_credential_acquire_cb_address_3 = (git_credential_acquire_cb_eiffel_feature) a_feature;
}

void* get_git_credential_acquire_cb_stub_1 (){
	return (void*) git_credential_acquire_cb_stub_1;
}

void* get_git_credential_acquire_cb_stub_2 (){
	return (void*) git_credential_acquire_cb_stub_2;
}

void* get_git_credential_acquire_cb_stub_3 (){
	return (void*) git_credential_acquire_cb_stub_3;
}

int call_git_credential_acquire_cb (void *a_function, git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	return ((int (*) (git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload))a_function) (a_out, url, username_from_url, allowed_types, payload);
}

