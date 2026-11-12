#define _GNU_SOURCE
#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <dlfcn.h>

typedef struct {uint64_t in, out; const char *name;} span;
static __thread unsigned armed, used;
static __thread span spans[16];
static uint64_t ns(void) {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (uint64_t)t.tv_sec*1000000000+t.tv_nsec;
}
void b2_clock_start(void) { used=0; armed=1; }
unsigned b2_clock_stop(span *dest) {
    armed=0;
    for (unsigned i=0;i<used;++i) dest[i]=spans[i];
    return used;
}
int xpu_launch_async(void *fn) {
    static int (*next)(void *);
    if (!next) {
        next=dlsym(RTLD_NEXT, "xpu_launch_async");
        if (!next) {
            void *h=dlopen("libxpurt.so.2",RTLD_NOW|RTLD_NOLOAD);
            if (h) next=dlsym(h,"xpu_launch_async");
        }
        if (!next) abort();
    }
    if (!armed || used>=16) return next(fn);
    struct header {uint32_t kind; uint64_t code; uint32_t bytes,pc,params; uint64_t hash; const char *name;};
    unsigned idx=used++;
    spans[idx].name=((struct header*)fn)->name;
    spans[idx].in=ns();
    int status=next(fn);
    spans[idx].out=ns();
    return status;
}
