# $NetBSD: buildlink3.mk,v 1.6 2004/11/26 20:59:08 markd Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
NETATALK_BUILDLINK3_MK:=	${NETATALK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	netatalk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nnetatalk}
BUILDLINK_PACKAGES+=	netatalk

.if !empty(NETATALK_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.netatalk+=	netatalk>=2.0.1
BUILDLINK_PKGSRCDIR.netatalk?=	../../net/netatalk
BUILDLINK_DEPMETHOD.netatalk?=	build
.endif	# NETATALK_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
