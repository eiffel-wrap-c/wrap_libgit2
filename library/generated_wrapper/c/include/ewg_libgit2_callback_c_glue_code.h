#ifndef EWG_CALLBACK_LIBGIT2___
#define EWG_CALLBACK_LIBGIT2___

#include <git2.h>

typedef int (*git_index_matched_path_cb_eiffel_feature) (void *a_class, char const *path, char const *matched_pathspec, void *payload);

void* git_index_matched_path_cb_object;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_1;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_2;
git_index_matched_path_cb_eiffel_feature git_index_matched_path_cb_address_3;

void set_git_index_matched_path_cb_object (void* a_class);

void release_git_index_matched_path_cb_object (void);

void* get_git_index_matched_path_cb_stub_1 ();
void* get_git_index_matched_path_cb_stub_2 ();
void* get_git_index_matched_path_cb_stub_3 ();

void set_git_index_matched_path_cb_entry_1 (void* a_feature);
void set_git_index_matched_path_cb_entry_2 (void* a_feature);
void set_git_index_matched_path_cb_entry_3 (void* a_feature);

int call_git_index_matched_path_cb (void *a_function, char const *path, char const *matched_pathspec, void *payload);


#include <git2.h>

typedef int (*git_status_cb_eiffel_feature) (void *a_class, char const *path, unsigned int status_flags, void *payload);

void* git_status_cb_object;
git_status_cb_eiffel_feature git_status_cb_address_1;
git_status_cb_eiffel_feature git_status_cb_address_2;
git_status_cb_eiffel_feature git_status_cb_address_3;

void set_git_status_cb_object (void* a_class);

void release_git_status_cb_object (void);

void* get_git_status_cb_stub_1 ();
void* get_git_status_cb_stub_2 ();
void* get_git_status_cb_stub_3 ();

void set_git_status_cb_entry_1 (void* a_feature);
void set_git_status_cb_entry_2 (void* a_feature);
void set_git_status_cb_entry_3 (void* a_feature);

int call_git_status_cb (void *a_function, char const *path, unsigned int status_flags, void *payload);


#include <git2.h>

typedef int (*git_submodule_cb_eiffel_feature) (void *a_class, git_submodule *sm, char const *name, void *payload);

void* git_submodule_cb_object;
git_submodule_cb_eiffel_feature git_submodule_cb_address_1;
git_submodule_cb_eiffel_feature git_submodule_cb_address_2;
git_submodule_cb_eiffel_feature git_submodule_cb_address_3;

void set_git_submodule_cb_object (void* a_class);

void release_git_submodule_cb_object (void);

void* get_git_submodule_cb_stub_1 ();
void* get_git_submodule_cb_stub_2 ();
void* get_git_submodule_cb_stub_3 ();

void set_git_submodule_cb_entry_1 (void* a_feature);
void set_git_submodule_cb_entry_2 (void* a_feature);
void set_git_submodule_cb_entry_3 (void* a_feature);

int call_git_submodule_cb (void *a_function, git_submodule *sm, char const *name, void *payload);


#include <git2.h>

typedef int (*git_tag_foreach_cb_eiffel_feature) (void *a_class, char const *name, git_oid *oid, void *payload);

void* git_tag_foreach_cb_object;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_1;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_2;
git_tag_foreach_cb_eiffel_feature git_tag_foreach_cb_address_3;

void set_git_tag_foreach_cb_object (void* a_class);

void release_git_tag_foreach_cb_object (void);

void* get_git_tag_foreach_cb_stub_1 ();
void* get_git_tag_foreach_cb_stub_2 ();
void* get_git_tag_foreach_cb_stub_3 ();

void set_git_tag_foreach_cb_entry_1 (void* a_feature);
void set_git_tag_foreach_cb_entry_2 (void* a_feature);
void set_git_tag_foreach_cb_entry_3 (void* a_feature);

int call_git_tag_foreach_cb (void *a_function, char const *name, git_oid *oid, void *payload);


#include <git2.h>

typedef void (*git_checkout_progress_cb_eiffel_feature) (void *a_class, char const *path, size_t completed_steps, size_t total_steps, void *payload);

void* git_checkout_progress_cb_object;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_1;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_2;
git_checkout_progress_cb_eiffel_feature git_checkout_progress_cb_address_3;

void set_git_checkout_progress_cb_object (void* a_class);

void release_git_checkout_progress_cb_object (void);

void* get_git_checkout_progress_cb_stub_1 ();
void* get_git_checkout_progress_cb_stub_2 ();
void* get_git_checkout_progress_cb_stub_3 ();

void set_git_checkout_progress_cb_entry_1 (void* a_feature);
void set_git_checkout_progress_cb_entry_2 (void* a_feature);
void set_git_checkout_progress_cb_entry_3 (void* a_feature);

void call_git_checkout_progress_cb (void *a_function, char const *path, size_t completed_steps, size_t total_steps, void *payload);


#include <git2.h>

typedef void (*git_checkout_perfdata_cb_eiffel_feature) (void *a_class, git_checkout_perfdata const *perfdata, void *payload);

void* git_checkout_perfdata_cb_object;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_1;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_2;
git_checkout_perfdata_cb_eiffel_feature git_checkout_perfdata_cb_address_3;

void set_git_checkout_perfdata_cb_object (void* a_class);

void release_git_checkout_perfdata_cb_object (void);

void* get_git_checkout_perfdata_cb_stub_1 ();
void* get_git_checkout_perfdata_cb_stub_2 ();
void* get_git_checkout_perfdata_cb_stub_3 ();

void set_git_checkout_perfdata_cb_entry_1 (void* a_feature);
void set_git_checkout_perfdata_cb_entry_2 (void* a_feature);
void set_git_checkout_perfdata_cb_entry_3 (void* a_feature);

void call_git_checkout_perfdata_cb (void *a_function, git_checkout_perfdata const *perfdata, void *payload);


#include <git2.h>

typedef int (*git_indexer_progress_cb_eiffel_feature) (void *a_class, git_indexer_progress const *stats, void *payload);

void* git_indexer_progress_cb_object;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_1;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_2;
git_indexer_progress_cb_eiffel_feature git_indexer_progress_cb_address_3;

void set_git_indexer_progress_cb_object (void* a_class);

void release_git_indexer_progress_cb_object (void);

void* get_git_indexer_progress_cb_stub_1 ();
void* get_git_indexer_progress_cb_stub_2 ();
void* get_git_indexer_progress_cb_stub_3 ();

void set_git_indexer_progress_cb_entry_1 (void* a_feature);
void set_git_indexer_progress_cb_entry_2 (void* a_feature);
void set_git_indexer_progress_cb_entry_3 (void* a_feature);

int call_git_indexer_progress_cb (void *a_function, git_indexer_progress const *stats, void *payload);


#include <git2.h>

typedef int (*git_transport_message_cb_eiffel_feature) (void *a_class, char const *str, int len, void *payload);

void* git_transport_message_cb_object;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_1;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_2;
git_transport_message_cb_eiffel_feature git_transport_message_cb_address_3;

void set_git_transport_message_cb_object (void* a_class);

void release_git_transport_message_cb_object (void);

void* get_git_transport_message_cb_stub_1 ();
void* get_git_transport_message_cb_stub_2 ();
void* get_git_transport_message_cb_stub_3 ();

void set_git_transport_message_cb_entry_1 (void* a_feature);
void set_git_transport_message_cb_entry_2 (void* a_feature);
void set_git_transport_message_cb_entry_3 (void* a_feature);

int call_git_transport_message_cb (void *a_function, char const *str, int len, void *payload);


#include <git2.h>

typedef int (*git_credential_acquire_cb_eiffel_feature) (void *a_class, git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload);

void* git_credential_acquire_cb_object;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_1;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_2;
git_credential_acquire_cb_eiffel_feature git_credential_acquire_cb_address_3;

void set_git_credential_acquire_cb_object (void* a_class);

void release_git_credential_acquire_cb_object (void);

void* get_git_credential_acquire_cb_stub_1 ();
void* get_git_credential_acquire_cb_stub_2 ();
void* get_git_credential_acquire_cb_stub_3 ();

void set_git_credential_acquire_cb_entry_1 (void* a_feature);
void set_git_credential_acquire_cb_entry_2 (void* a_feature);
void set_git_credential_acquire_cb_entry_3 (void* a_feature);

int call_git_credential_acquire_cb (void *a_function, git_credential **a_out, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload);


#endif
