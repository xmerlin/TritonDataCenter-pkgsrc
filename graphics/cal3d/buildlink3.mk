# $NetBSD: buildlink3.mk,v 1.3 2004/03/16 17:58:01 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
CAL3D_BUILDLINK3_MK:=	${CAL3D_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cal3d
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncal3d}
BUILDLINK_PACKAGES+=	cal3d

.if !empty(CAL3D_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.cal3d+=	cal3d>=0.9.1
BUILDLINK_PKGSRCDIR.cal3d?=	../../graphics/cal3d

.include "../../graphics/Mesa/buildlink3.mk"

.endif	# CAL3D_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
