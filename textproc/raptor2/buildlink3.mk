# $NetBSD: buildlink3.mk,v 1.6 2012/12/16 01:52:35 obache Exp $

BUILDLINK_TREE+=	raptor2

.if !defined(RAPTOR2_BUILDLINK3_MK)
RAPTOR2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.raptor2+=	raptor2>=2.0.6
BUILDLINK_ABI_DEPENDS.raptor2+=	raptor2>=2.0.8nb2
BUILDLINK_PKGSRCDIR.raptor2?=	../../textproc/raptor2

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif # RAPTOR2_BUILDLINK3_MK

BUILDLINK_TREE+=	-raptor2
