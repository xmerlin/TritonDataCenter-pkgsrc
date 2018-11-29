$NetBSD: patch-src_lib_eliom__runtime.shared.mli,v 1.1 2018/11/29 12:04:23 jaapb Exp $

Compile with tyxml 4.3.0
--- src/lib/eliom_runtime.shared.mli.orig	2018-02-08 14:30:46.000000000 +0000
+++ src/lib/eliom_runtime.shared.mli
@@ -63,6 +63,8 @@ module RawXML : sig
         (Dom_html.mouseEvent Js.t -> unit) (* Client side-only *)
     | CE_client_closure_keyboard of
         (Dom_html.keyboardEvent Js.t -> unit) (* Client side-only *)
+    | CE_client_closure_touch of
+        (Dom_html.touchEvent Js.t -> unit) (* Client side-only *)
     | CE_call_service of
         ( [ `A | `Form_get | `Form_post] *
           (cookie_info option) *
