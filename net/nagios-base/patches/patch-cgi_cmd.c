$NetBSD: patch-cgi_cmd.c,v 1.1 2014/04/02 10:22:37 he Exp $

Fix off-by-one vulnerabilities, ref. http://secunia.com/advisories/55976/

--- cgi/cmd.c.orig	2013-03-09 21:46:35.000000000 +0000
+++ cgi/cmd.c
@@ -321,7 +321,6 @@ int process_cgivars(void) {
 
 		/* do some basic length checking on the variable identifier to prevent buffer overflows */
 		if(strlen(variables[x]) >= MAX_INPUT_BUFFER - 1) {
-			x++;
 			continue;
 			}
 
