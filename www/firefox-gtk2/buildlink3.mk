# $NetBSD: buildlink3.mk,v 1.1 2004/11/17 02:34:53 xtraeme Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
FIREFOX_GTK2_BUILDLINK3_MK:=	${FIREFOX_GTK2_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	firefox-gtk2
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfirefox-gtk2}
BUILDLINK_PACKAGES+=	firefox-gtk2

.if !empty(FIREFOX_GTK2_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.firefox-gtk2+=	firefox-gtk2>=1.0nb1
BUILDLINK_PKGSRCDIR.firefox-gtk2?=	../../www/firefox-gtk2
.endif	# FIREFOX_GTK2_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
