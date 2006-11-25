# $NetBSD: buildlink3.mk,v 1.3 2006/11/25 00:09:19 reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBXAU_BUILDLINK3_MK:=	${LIBXAU_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libXau
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NlibXau}
BUILDLINK_PACKAGES+=	libXau
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libXau

.if ${LIBXAU_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libXau+=	libXau>=1.0
BUILDLINK_PKGSRCDIR.libXau?=	../../x11/libXau
.endif	# LIBXAU_BUILDLINK3_MK

.include "../../x11/xproto/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
