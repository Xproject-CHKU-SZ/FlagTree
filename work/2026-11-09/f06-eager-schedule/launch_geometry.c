/* Observe only the initial physical launch geometry of the two fused B2 kernels. */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static __thread int clusters, cores;
static unsigned seen;
static void *next_symbol(const char *name) {
    void *fn = dlsym(RTLD_NEXT, name);
    if (!fn) {
        void *lib = dlopen("libxpurt.so.2", RTLD_NOW | RTLD_NOLOAD);
        if (lib) fn = dlsym(lib, name);
    }
    if (!fn) abort();
    return fn;
}
int xpu_launch_config(int nc, int ncores, void *stream) {
    static int (*next)(int, int, void *);
    if (!next) next = next_symbol(__func__);
    clusters = nc;
    cores = ncores;
    return next(nc, ncores, stream);
}
int xpu_launch_async(void *fn) {
    static int (*next)(void *);
    if (!next) next = next_symbol(__func__);
    struct header {uint32_t kind; uint64_t code; uint32_t bytes,pc,params; uint64_t hash; const char *name;};
    const struct header *h = fn;
    if (h && h->name) {
        unsigned bit = strstr(h->name, "_tle_row_softmax") ? 1 :
                       strstr(h->name, "fused__softmax_add") ? 2 : 0;
        if (bit && !(__atomic_fetch_or(&seen, bit, __ATOMIC_RELAXED) & bit))
            fprintf(stderr, "GEOMETRY %s clusters=%d cores=%d bytes=%u\n", h->name, clusters, cores, h->bytes);
    }
    return next(fn);
}
