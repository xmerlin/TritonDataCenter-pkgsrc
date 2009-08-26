# $NetBSD: buildlink3.mk,v 1.27 2009/08/26 19:57:03 sno Exp $

BUILDLINK_TREE+=	xfce4-utils

.if !defined(XFCE4_UTILS_BUILDLINK3_MK)
XFCE4_UTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-utils+=	xfce4-utils>=4.4.3nb1
BUILDLINK_ABI_DEPENDS.xfce4-utils?=	xfce4-utils>=4.4.3nb2
BUILDLINK_PKGSRCDIR.xfce4-utils?=	../../x11/xfce4-utils

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/xfce4-mcs-plugins/buildlink3.mk"
.include "../../devel/xfce4-dev-tools/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_UTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-utils
