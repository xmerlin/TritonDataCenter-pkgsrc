# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/08/15 00:45:50 schmonz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SYNCDIR_BUILDLINK3_MK:=		${SYNCDIR_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=		syncdir
.endif

BUILDLINK_PACKAGES:=		${BUILDLINK_PACKAGES:Nsyncdir}
BUILDLINK_PACKAGES+=		syncdir

.if !empty(SYNCDIR_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.syncdir+=	syncdir>=1.0
BUILDLINK_PKGSRCDIR.syncdir?=	../../devel/syncdir
.endif	# SYNCDIR_BUILDLINK3_MK

BUILDLINK_DEPTH:=     		${BUILDLINK_DEPTH:S/+$//}
