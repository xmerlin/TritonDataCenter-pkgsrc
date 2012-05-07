# $NetBSD: buildlink3.mk,v 1.11 2012/05/07 01:53:20 dholland Exp $

BUILDLINK_TREE+=	SDLmm

.if !defined(SDLMM_BUILDLINK3_MK)
SDLMM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SDLmm+=	SDLmm>=0.1.8nb1
BUILDLINK_ABI_DEPENDS.SDLmm+=	SDLmm>=0.1.8nb6
BUILDLINK_PKGSRCDIR.SDLmm?=	../../devel/SDLmm

.include "../../devel/SDL/buildlink3.mk"
.endif # SDLMM_BUILDLINK3_MK

BUILDLINK_TREE+=	-SDLmm
