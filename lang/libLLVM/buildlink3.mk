# $NetBSD: buildlink3.mk,v 1.2 2015/04/06 17:25:05 tnn Exp $

BUILDLINK_TREE+=	libLLVM

.if !defined(LIBLLVM_BUILDLINK3_MK)
LIBLLVM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libLLVM+=	libLLVM>=3.6.0nb1
BUILDLINK_PKGSRCDIR.libLLVM?=	../../lang/libLLVM
BUILDLINK_INCDIRS.libLLVM?=	include/libLLVM
BUILDLINK_LIBDIRS.libLLVM?=	lib/libLLVM

LLVM_CONFIG_PATH?=		${BUILDLINK_PREFIX.libLLVM}/libexec/libLLVM/llvm-config

.endif	# LIBLLVM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libLLVM
