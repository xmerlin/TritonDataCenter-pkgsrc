# $NetBSD: buildlink3.mk,v 1.6 2009/08/26 19:56:47 sno Exp $

BUILDLINK_TREE+=	libkdcraw

.if !defined(LIBKDCRAW_BUILDLINK3_MK)
LIBKDCRAW_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libkdcraw+=	libkdcraw>=0.1.1
BUILDLINK_ABI_DEPENDS.libkdcraw?=	libkdcraw>=0.1.9nb1
BUILDLINK_PKGSRCDIR.libkdcraw?=	../../graphics/libkdcraw

.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.endif # LIBKDCRAW_BUILDLINK3_MK

BUILDLINK_TREE+=	-libkdcraw
