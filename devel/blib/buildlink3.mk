# $NetBSD: buildlink3.mk,v 1.3 2006/01/24 07:32:01 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BLIB_BUILDLINK3_MK:=	${BLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	blib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nblib}
BUILDLINK_PACKAGES+=	blib

.if !empty(BLIB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.blib+=	blib>=1.0.2nb1
BUILDLINK_RECOMMENDED.blib+=	blib>=1.0.2nb3
BUILDLINK_PKGSRCDIR.blib?=	../../devel/blib
.endif	# BLIB_BUILDLINK3_MK

.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
