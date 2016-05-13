# $NetBSD: buildlink3.mk,v 1.33 2016/05/13 20:47:32 adam Exp $

BUILDLINK_TREE+=	boost-headers

.if !defined(BOOST_HEADERS_BUILDLINK3_MK)
BOOST_HEADERS_BUILDLINK3_MK:=

# Use a dependency pattern that guarantees the proper ABI.
BUILDLINK_API_DEPENDS.boost-headers+=	boost-headers-1.61.*
BUILDLINK_DEPMETHOD.boost-headers?=	build
BUILDLINK_PKGSRCDIR.boost-headers?=	../../devel/boost-headers

PTHREAD_OPTS+=		require
.include "../../mk/pthread.buildlink3.mk"
.endif # BOOST_HEADERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-boost-headers
