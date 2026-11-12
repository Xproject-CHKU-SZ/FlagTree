/* Read-only observation of one torch.add in this disposable test process. */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static __thread int active, nc, ncores;
static __thread uintptr_t a, b, out;
static __thread unsigned char args[128];
static __thread unsigned sizes[128];
void observe_add(uintptr_t x, uintptr_t bias, uintptr_t result) {
    a=x; b=bias; out=result; active=1; memset(sizes,0,sizeof(sizes));
}
void done_observing(void) { active=0; }
static void *real(const char *name) {
    void *p=dlsym(RTLD_NEXT,name);
    if (!p) {
        void *h=dlopen("libxpurt.so.2",RTLD_NOW|RTLD_NOLOAD);
        if (h) p=dlsym(h,name);
    }
    if (!p) abort();
    return p;
}
int xpu_launch_config(int clusters,int cores,void *stream) {
    typedef int (*F)(int,int,void*);static F f; if(!f) f=(F)real(__func__);
    if(active){ nc=clusters; ncores=cores; }
    return f(clusters,cores,stream);
}
int xpu_launch_argument_set(const void *arg,size_t size,size_t offset) {
    typedef int (*F)(const void*,size_t,size_t);static F f; if(!f) f=(F)real(__func__);
    if(active && size<=8 && offset<=sizeof(args)-size && arg){
        memcpy(args+offset,arg,size);sizes[offset]=size;
    }
    return f(arg,size,offset);
}
int xpu_launch_async(void *func) {
    typedef int (*F)(void*);static F f; if(!f) f=(F)real(__func__);
    if(active){
        struct header {uint32_t kind; uint64_t code; uint32_t bytes,pc,params; uint64_t hash;const char* name;};
        const struct header *h=func;
        if(h && h->name && strstr(h->name,"tensor_calc_k_nk")){
            fprintf(stderr,"ADD_LAUNCH symbol=%s bytes=%u clusters=%d cores=%d", h->name,h->bytes,nc,ncores);
            for(unsigned i=0;i<sizeof(args);i++) if(sizes[i]){
                uint64_t v=0;memcpy(&v,args+i,sizes[i]);
                if(v==a || v==b || v==out)fprintf(stderr," arg%u=%s",i,v==a?"matrix":v==b?"bias":"out");
                else if(v<=0x40000000)fprintf(stderr," arg%u=%llu",i,(unsigned long long)v);
                else fprintf(stderr," arg%u=other",i);
            }
            fprintf(stderr,"\n");fflush(stderr);
        }
    }
    return f(func);
}
