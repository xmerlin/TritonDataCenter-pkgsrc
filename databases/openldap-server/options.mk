# $NetBSD: options.mk,v 1.11 2009/04/27 07:13:02 ghen Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.openldap-server
PKG_SUPPORTED_OPTIONS=	bdb kerberos sasl slp inet6 smbk5pwd dso
PKG_OPTIONS_OPTIONAL_GROUPS+=	odbc
PKG_OPTIONS_GROUP.odbc=	iodbc unixodbc
PKG_SUGGESTED_OPTIONS=	bdb

.include "../../mk/bsd.options.mk"

###
### Whether to build with the Berkeley DB based slapd backends.
###
### NOTE: that option is enabled, because the openldap server needs
### 	  to have local storage support to work as standalone.
###

.if !empty(PKG_OPTIONS:Mbdb)
.  include "../../databases/db4/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-bdb --enable-hdb
TEST_TARGET=		test
.else
CONFIGURE_ARGS+=	--disable-bdb --disable-hdb
.endif

###
### Whether to build with iODBC to enable SQL based slapd backends
###
.if !empty(PKG_OPTIONS:Miodbc)
.  include "../../databases/iodbc/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-sql
.endif

###
### Whether to build with unixODBC to enable SQL based slapd backends
###
.if !empty(PKG_OPTIONS:Munixodbc)
.  include "../../databases/unixodbc/buildlink3.mk"
.  include "../../devel/libltdl/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-sql
.endif

.if empty(PKG_OPTIONS:Miodbc) && empty(PKG_OPTIONS:Munixodbc)
CONFIGURE_ARGS+=	--disable-sql
.endif

###
### Kerberos authentication is via SASL.
###
.if !empty(PKG_OPTIONS:Mkerberos)
.  if empty(PKG_OPTIONS:Msasl)
PKG_OPTIONS+=		sasl
.  endif
.endif

###
### SASL authentication (requires SASL2)
###
.if !empty(PKG_OPTIONS:Msasl)
CONFIGURE_ARGS+=		--with-cyrus-sasl
CONFIGURE_ARGS+=		--enable-spasswd
BUILDLINK_API_DEPENDS.cyrus-sasl+=	cyrus-sasl>=2.1.15
.  include "../../security/cyrus-sasl/buildlink3.mk"
.else
CONFIGURE_ARGS+=		--without-cyrus-sasl
.endif

###
### SLP (Service Locator Protocol)
###
.if !empty(PKG_OPTIONS:Mslp)
.  include "../../net/openslp/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-slp
.endif

###
### IPv6 support
###
.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif

###
### smbk5pwd support (sync samba and kerberos passwords on password changes)
###

.if !empty(PKG_OPTIONS:Msmbk5pwd)
PKG_FAIL_REASON+=	"smbk5pwd option to openldap-server is now " \
			"available through the openldap-smbk5pwd package"
.endif

###
### Enable dynamic module support
###
.if !empty(PKG_OPTIONS:Mdso)
CONFIGURE_ARGS+=	--enable-modules
. include "../../devel/libltdl/buildlink3.mk"
.endif
