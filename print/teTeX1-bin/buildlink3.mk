# $NetBSD: buildlink3.mk,v 1.2 2005/11/08 23:42:24 tonio Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
TETEX_BIN_BUILDLINK3_MK:=	${TETEX_BIN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	teTeX-bin
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NteTeX-bin}
BUILDLINK_PACKAGES+=	teTeX-bin

.if !empty(TETEX_BIN_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.teTeX-bin+=	teTeX-bin-1.[0-9]*
BUILDLINK_DEPMETHOD.teTeX-bin?=	build
BUILDLINK_PKGSRCDIR.teTeX-bin?=	../../print/teTeX1-bin
.endif	# TETEX_BIN_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
