# $NetBSD: Makefile,v 1.14 2023/10/10 16:01:13 adam Exp $

DISTNAME=	pytest-timeout-2.2.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pytest-timeout/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/pytest-dev/pytest-timeout
COMMENT=	Py.test plugin to abort hanging tests
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-test>=5.0.0:../../devel/py-test

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
