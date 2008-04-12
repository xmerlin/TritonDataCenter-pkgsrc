# $NetBSD: options.mk,v 1.4 2008/04/12 22:43:01 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.cairo
PKG_SUPPORTED_OPTIONS=	x11
PKG_SUGGESTED_OPTIONS=	x11

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		x11

###
### X11 support
###
.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=	--enable-xlib --enable-xlib-xrender
PLIST.x11=		yes
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
BUILDLINK_DEPMETHOD.libXt?=	build # only for configure
.include "../../x11/libXt/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-xlib --disable-xlib-xrender
.endif
