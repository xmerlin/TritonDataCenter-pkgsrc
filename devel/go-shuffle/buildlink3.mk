# $NetBSD: buildlink3.mk,v 1.1 2017/08/17 01:37:59 gavan Exp $

BUILDLINK_TREE+=	go-shuffle

.if !defined(GO_SHUFFLE_BUILDLINK3_MK)
GO_SHUFFLE_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-shuffle=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-shuffle?=		build

BUILDLINK_API_DEPENDS.go-shuffle+=		go-shuffle>=0.0
BUILDLINK_PKGSRCDIR.go-shuffle?=		../../devel/go-shuffle

.endif  # GO_SHUFFLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-shuffle

