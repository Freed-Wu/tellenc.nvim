#ifndef TELLENC_H
#define TELLENC_H 1
#include <stdlib.h>
#include <stdbool.h>
#include <sys/cdefs.h>
__BEGIN_DECLS

#ifndef _WIN32
#define __cdecl
#endif

const char __cdecl *tellenc(const char *buffer, size_t len, bool verbose);

__END_DECLS
#endif /* tellenc.h */
