# $NetBSD: buildlink3.mk,v 1.1 2004/05/03 15:58:55 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SWIG_BUILDLINK3_MK:=	${SWIG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	swig
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nswig}
BUILDLINK_PACKAGES+=	swig

.if !empty(SWIG_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.swig+=	swig>=1.1p5nb1
BUILDLINK_PKGSRCDIR.swig?=	../../devel/swig
# only contains a static library
BUILDLINK_DEPMETHOD.swig?=	build
.endif	# SWIG_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
