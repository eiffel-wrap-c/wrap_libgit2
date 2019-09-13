#include <ewg_eiffel.h>
#include <ewg_libgit2_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
struct git_index_matched_path_cb_entry_struct git_index_matched_path_cb_entry = {NULL, NULL};

int git_index_matched_path_cb_stub (char const *path, char const *matched_pathspec, void *payload)
{
	if (git_index_matched_path_cb_entry.a_class != NULL && git_index_matched_path_cb_entry.feature != NULL)
	{
		return git_index_matched_path_cb_entry.feature (eif_access(git_index_matched_path_cb_entry.a_class), path, matched_pathspec, payload);
	}
}

void set_git_index_matched_path_cb_entry (void* a_class, void* a_feature)
{
	git_index_matched_path_cb_entry.a_class = eif_adopt(a_class);
	git_index_matched_path_cb_entry.feature = (git_index_matched_path_cb_eiffel_feature) a_feature;
}

void* get_git_index_matched_path_cb_stub ()
{
	return (void*) git_index_matched_path_cb_stub;
}

int call_git_index_matched_path_cb (void *a_function, char const *path, char const *matched_pathspec, void *payload)
{
	return ((int (*) (char const *path, char const *matched_pathspec, void *payload))a_function) (path, matched_pathspec, payload);
}

struct git_status_cb_entry_struct git_status_cb_entry = {NULL, NULL};

int git_status_cb_stub (char const *path, unsigned int status_flags, void *payload)
{
	if (git_status_cb_entry.a_class != NULL && git_status_cb_entry.feature != NULL)
	{
		return git_status_cb_entry.feature (eif_access(git_status_cb_entry.a_class), path, status_flags, payload);
	}
}

void set_git_status_cb_entry (void* a_class, void* a_feature)
{
	git_status_cb_entry.a_class = eif_adopt(a_class);
	git_status_cb_entry.feature = (git_status_cb_eiffel_feature) a_feature;
}

void* get_git_status_cb_stub ()
{
	return (void*) git_status_cb_stub;
}

int call_git_status_cb (void *a_function, char const *path, unsigned int status_flags, void *payload)
{
	return ((int (*) (char const *path, unsigned int status_flags, void *payload))a_function) (path, status_flags, payload);
}

struct git_submodule_cb_entry_struct git_submodule_cb_entry = {NULL, NULL};

int git_submodule_cb_stub (git_submodule *sm, char const *name, void *payload)
{
	if (git_submodule_cb_entry.a_class != NULL && git_submodule_cb_entry.feature != NULL)
	{
		return git_submodule_cb_entry.feature (eif_access(git_submodule_cb_entry.a_class), sm, name, payload);
	}
}

void set_git_submodule_cb_entry (void* a_class, void* a_feature)
{
	git_submodule_cb_entry.a_class = eif_adopt(a_class);
	git_submodule_cb_entry.feature = (git_submodule_cb_eiffel_feature) a_feature;
}

void* get_git_submodule_cb_stub ()
{
	return (void*) git_submodule_cb_stub;
}

int call_git_submodule_cb (void *a_function, git_submodule *sm, char const *name, void *payload)
{
	return ((int (*) (git_submodule *sm, char const *name, void *payload))a_function) (sm, name, payload);
}

struct git_tag_foreach_cb_entry_struct git_tag_foreach_cb_entry = {NULL, NULL};

int git_tag_foreach_cb_stub (char const *name, git_oid *oid, void *payload)
{
	if (git_tag_foreach_cb_entry.a_class != NULL && git_tag_foreach_cb_entry.feature != NULL)
	{
		return git_tag_foreach_cb_entry.feature (eif_access(git_tag_foreach_cb_entry.a_class), name, oid, payload);
	}
}

void set_git_tag_foreach_cb_entry (void* a_class, void* a_feature)
{
	git_tag_foreach_cb_entry.a_class = eif_adopt(a_class);
	git_tag_foreach_cb_entry.feature = (git_tag_foreach_cb_eiffel_feature) a_feature;
}

void* get_git_tag_foreach_cb_stub ()
{
	return (void*) git_tag_foreach_cb_stub;
}

int call_git_tag_foreach_cb (void *a_function, char const *name, git_oid *oid, void *payload)
{
	return ((int (*) (char const *name, git_oid *oid, void *payload))a_function) (name, oid, payload);
}

struct git_checkout_progress_cb_entry_struct git_checkout_progress_cb_entry = {NULL, NULL};

void git_checkout_progress_cb_stub (char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	if (git_checkout_progress_cb_entry.a_class != NULL && git_checkout_progress_cb_entry.feature != NULL)
	{
		git_checkout_progress_cb_entry.feature (eif_access(git_checkout_progress_cb_entry.a_class), path, completed_steps, total_steps, payload);
	}
}

void set_git_checkout_progress_cb_entry (void* a_class, void* a_feature)
{
	git_checkout_progress_cb_entry.a_class = eif_adopt(a_class);
	git_checkout_progress_cb_entry.feature = (git_checkout_progress_cb_eiffel_feature) a_feature;
}

void* get_git_checkout_progress_cb_stub ()
{
	return (void*) git_checkout_progress_cb_stub;
}

void call_git_checkout_progress_cb (void *a_function, char const *path, size_t completed_steps, size_t total_steps, void *payload)
{
	((void (*) (char const *path, size_t completed_steps, size_t total_steps, void *payload))a_function) (path, completed_steps, total_steps, payload);
}

struct git_checkout_perfdata_cb_entry_struct git_checkout_perfdata_cb_entry = {NULL, NULL};

void git_checkout_perfdata_cb_stub (git_checkout_perfdata const *perfdata, void *payload)
{
	if (git_checkout_perfdata_cb_entry.a_class != NULL && git_checkout_perfdata_cb_entry.feature != NULL)
	{
		git_checkout_perfdata_cb_entry.feature (eif_access(git_checkout_perfdata_cb_entry.a_class), perfdata, payload);
	}
}

void set_git_checkout_perfdata_cb_entry (void* a_class, void* a_feature)
{
	git_checkout_perfdata_cb_entry.a_class = eif_adopt(a_class);
	git_checkout_perfdata_cb_entry.feature = (git_checkout_perfdata_cb_eiffel_feature) a_feature;
}

void* get_git_checkout_perfdata_cb_stub ()
{
	return (void*) git_checkout_perfdata_cb_stub;
}

void call_git_checkout_perfdata_cb (void *a_function, git_checkout_perfdata const *perfdata, void *payload)
{
	((void (*) (git_checkout_perfdata const *perfdata, void *payload))a_function) (perfdata, payload);
}

struct git_cred_acquire_cb_entry_struct git_cred_acquire_cb_entry = {NULL, NULL};

int git_cred_acquire_cb_stub (git_cred **cred, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	if (git_cred_acquire_cb_entry.a_class != NULL && git_cred_acquire_cb_entry.feature != NULL)
	{
		return git_cred_acquire_cb_entry.feature (eif_access(git_cred_acquire_cb_entry.a_class), cred, url, username_from_url, allowed_types, payload);
	}
}

void set_git_cred_acquire_cb_entry (void* a_class, void* a_feature)
{
	git_cred_acquire_cb_entry.a_class = eif_adopt(a_class);
	git_cred_acquire_cb_entry.feature = (git_cred_acquire_cb_eiffel_feature) a_feature;
}

void* get_git_cred_acquire_cb_stub ()
{
	return (void*) git_cred_acquire_cb_stub;
}

int call_git_cred_acquire_cb (void *a_function, git_cred **cred, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload)
{
	return ((int (*) (git_cred **cred, char const *url, char const *username_from_url, unsigned int allowed_types, void *payload))a_function) (cred, url, username_from_url, allowed_types, payload);
}

