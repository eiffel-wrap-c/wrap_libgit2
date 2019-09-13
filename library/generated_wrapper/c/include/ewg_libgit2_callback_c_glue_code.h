#ifndef EWG_CALLBACK_LIBGIT2___
#define EWG_CALLBACK_LIBGIT2___

#include <git2.h>

typedef int (*git_index_matched_path_cb_eiffel_feature) (void *a_class, char const *path, char const *matched_pathspec, void *payload);

void* get_git_index_matched_path_cb_stub ();

struct git_index_matched_path_cb_entry_struct
{
	void* a_class;
	git_index_matched_path_cb_eiffel_feature feature;
};

void set_git_index_matched_path_cb_entry (void* a_class, void* a_feature);

int call_git_index_matched_path_cb (void *a_function, char const *path, char const *matched_pathspec, void *payload);


#include <git2.h>

typedef int (*git_status_cb_eiffel_feature) (void *a_class, char const *path, unsigned int status_flags, void *payload);

void* get_git_status_cb_stub ();

struct git_status_cb_entry_struct
{
	void* a_class;
	git_status_cb_eiffel_feature feature;
};

void set_git_status_cb_entry (void* a_class, void* a_feature);

int call_git_status_cb (void *a_function, char const *path, unsigned int status_flags, void *payload);


#include <git2.h>

typedef int (*git_submodule_cb_eiffel_feature) (void *a_class, git_submodule *sm, char const *name, void *payload);

void* get_git_submodule_cb_stub ();

struct git_submodule_cb_entry_struct
{
	void* a_class;
	git_submodule_cb_eiffel_feature feature;
};

void set_git_submodule_cb_entry (void* a_class, void* a_feature);

int call_git_submodule_cb (void *a_function, git_submodule *sm, char const *name, void *payload);


#include <git2.h>

typedef int (*git_tag_foreach_cb_eiffel_feature) (void *a_class, char const *name, git_oid *oid, void *payload);

void* get_git_tag_foreach_cb_stub ();

struct git_tag_foreach_cb_entry_struct
{
	void* a_class;
	git_tag_foreach_cb_eiffel_feature feature;
};

void set_git_tag_foreach_cb_entry (void* a_class, void* a_feature);

int call_git_tag_foreach_cb (void *a_function, char const *name, git_oid *oid, void *payload);


#include <git2.h>

typedef void (*git_checkout_progress_cb_eiffel_feature) (void *a_class, char const *path, size_t completed_steps, size_t total_steps, void *payload);

void* get_git_checkout_progress_cb_stub ();

struct git_checkout_progress_cb_entry_struct
{
	void* a_class;
	git_checkout_progress_cb_eiffel_feature feature;
};

void set_git_checkout_progress_cb_entry (void* a_class, void* a_feature);

void call_git_checkout_progress_cb (void *a_function, char const *path, size_t completed_steps, size_t total_steps, void *payload);


#include <git2.h>

typedef void (*git_checkout_perfdata_cb_eiffel_feature) (void *a_class, git_checkout_perfdata const *perfdata, void *payload);

void* get_git_checkout_perfdata_cb_stub ();

struct git_checkout_perfdata_cb_entry_struct
{
	void* a_class;
	git_checkout_perfdata_cb_eiffel_feature feature;
};

void set_git_checkout_perfdata_cb_entry (void* a_class, void* a_feature);

void call_git_checkout_perfdata_cb (void *a_function, git_checkout_perfdata const *perfdata, void *payload);


#include <git2.h>

typedef int (*git_cred_acquire_cb_eiffel_feature) (void *a_class, git_cred **cred, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload);

void* get_git_cred_acquire_cb_stub ();

struct git_cred_acquire_cb_entry_struct
{
	void* a_class;
	git_cred_acquire_cb_eiffel_feature feature;
};

void set_git_cred_acquire_cb_entry (void* a_class, void* a_feature);

int call_git_cred_acquire_cb (void *a_function, git_cred **cred, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload);


#endif
