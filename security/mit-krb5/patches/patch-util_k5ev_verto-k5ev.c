$NetBSD: patch-util_k5ev_verto-k5ev.c,v 1.4 2018/06/15 20:46:01 tez Exp $

Fix include file path

--- util/verto/verto-k5ev.c.orig	2018-05-03 14:34:47.000000000 +0000
+++ util/verto/verto-k5ev.c
@@ -35,7 +35,7 @@
 
 #include <verto.h>
 #include <verto-module.h>
-#include "rename.h"
+#include "gssrpc/rename.h"
 
 /* Ignore some warnings generated by the libev code, which the libev maintainer
  * isn't interested in avoiding. */
