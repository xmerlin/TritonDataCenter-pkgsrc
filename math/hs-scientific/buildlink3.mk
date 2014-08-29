# $NetBSD: buildlink3.mk,v 1.3 2014/08/29 14:08:41 szptvlfn Exp $

BUILDLINK_TREE+=	hs-scientific

.if !defined(HS_SCIENTIFIC_BUILDLINK3_MK)
HS_SCIENTIFIC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-scientific+=	hs-scientific>=0.3.3
BUILDLINK_ABI_DEPENDS.hs-scientific+=	hs-scientific>=0.3.3.0
BUILDLINK_PKGSRCDIR.hs-scientific?=	../../math/hs-scientific

.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../devel/hs-text/buildlink3.mk"
.endif	# HS_SCIENTIFIC_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-scientific
