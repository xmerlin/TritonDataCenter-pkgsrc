# $NetBSD: buildlink3.mk,v 1.2 2004/09/24 01:56:55 rh Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SDLKIT_BUILDLINK3_MK:=	${SDLKIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	SDLKit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NSDLKit}
BUILDLINK_PACKAGES+=	SDLKit

.if !empty(SDLKIT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.SDLKit+=	SDLKit>=0.3.1r2nb5
BUILDLINK_RECOMMENDED.SDLKit?=	SDLKit>=0.3.1r2nb8
BUILDLINK_PKGSRCDIR.SDLKit?=	../../graphics/SDLKit
.endif	# SDLKIT_BUILDLINK3_MK

.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/RenderKit/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
