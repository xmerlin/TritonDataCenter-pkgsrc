# $NetBSD: Makefile,v 1.36 2023/07/06 09:41:18 wiz Exp $

DISTNAME=	biber-2.19
PKGNAME=	p5-biblatex-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GITHUB:=plk/}
GITHUB_PROJECT=	biber
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/plk/biber
COMMENT=	Replacement of bibtex for users of BibLaTeX
LICENSE=	gnu-gpl-v1 OR artistic-2.0

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Biber/Config/.packlist
USE_LANGUAGES=		# empty
USE_TOOLS+=		perl
REPLACE_PERL+=		bin/biber

DEPENDS+=		p5-Business-ISBN-[0-9]*:../../misc/p5-Business-ISBN
DEPENDS+=		p5-Business-ISMN-[0-9]*:../../misc/p5-Business-ISMN
DEPENDS+=		p5-Business-ISSN-[0-9]*:../../misc/p5-Business-ISSN
DEPENDS+=		p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor
DEPENDS+=		p5-Data-Compare-[0-9]*:../../devel/p5-Data-Compare
DEPENDS+=		p5-Data-Dump-[0-9]*:../../devel/p5-Data-Dump
DEPENDS+=		p5-Data-Uniqid-[0-9]*:../../devel/p5-Data-Uniqid
DEPENDS+=		p5-DateTime-Calendar-Julian-[0-9]*:../../time/p5-DateTime-Calendar-Julian
DEPENDS+=		p5-DateTime-Format-Builder-[0-9]*:../../time/p5-DateTime-Format-Builder
DEPENDS+=		p5-Encode-EUCJPASCII-[0-9]*:../../textproc/p5-Encode-EUCJPASCII
DEPENDS+=		p5-Encode-HanExtra-[0-9]*:../../textproc/p5-Encode-HanExtra
DEPENDS+=		p5-Encode-JIS2K-[0-9]*:../../textproc/p5-Encode-JIS2K
DEPENDS+=		p5-File-Slurper-[0-9]*:../../devel/p5-File-Slurper
DEPENDS+=		p5-IPC-Run3-[0-9]*:../../devel/p5-IPC-Run3
DEPENDS+=		p5-Lingua-Translit>=0.25:../../textproc/p5-Lingua-Translit
DEPENDS+=		p5-List-AllUtils-[0-9]*:../../devel/p5-List-AllUtils
DEPENDS+=		p5-List-MoreUtils-XS-[0-9]*:../../devel/p5-List-MoreUtils-XS
DEPENDS+=		p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=		p5-Log-Log4perl-[0-9]*:../../devel/p5-Log-Log4perl
DEPENDS+=		p5-PerlIO-utf8_strict-[0-9]*:../../devel/p5-PerlIO-utf8_strict
DEPENDS+=		p5-Regexp-Common-[0-9]*:../../textproc/p5-Regexp-Common
DEPENDS+=		p5-Sort-Key-[0-9]*:../../devel/p5-Sort-Key
# not mentioned, but needed
DEPENDS+=		p5-Sub-Name-[0-9]*:../../devel/p5-Sub-Name
DEPENDS+=		p5-Text-BibTeX>=0.76:../../textproc/p5-Text-BibTeX
DEPENDS+=		p5-Text-CSV-[0-9]*:../../textproc/p5-Text-CSV
DEPENDS+=		p5-Text-CSV_XS-[0-9]*:../../textproc/p5-Text-CSV_XS
DEPENDS+=		p5-Text-Roman-[0-9]*:../../textproc/p5-Text-Roman
DEPENDS+=		p5-Unicode-LineBreak>=2016.003:../../textproc/p5-Unicode-LineBreak
DEPENDS+=		p5-XML-LibXML-Simple-[0-9]*:../../textproc/p5-XML-LibXML-Simple
DEPENDS+=		p5-XML-LibXML>=1.70:../../textproc/p5-XML-LibXML
DEPENDS+=		p5-XML-LibXSLT-[0-9]*:../../textproc/p5-XML-LibXSLT
DEPENDS+=		p5-XML-Writer-[0-9]*:../../textproc/p5-XML-Writer
DEPENDS+=		p5-autovivification-[0-9]*:../../devel/p5-autovivification
DEPENDS+=		p5-libwww-[0-9]*:../../www/p5-libwww

TOOL_DEPENDS+=		p5-ExtUtils-LibBuilder>=0.4:../../devel/p5-ExtUtils-LibBuilder
TOOL_DEPENDS+=		p5-Config-AutoConf>=0.15:../../devel/p5-Config-AutoConf

TEST_DEPENDS+=		p5-File-Which-[0-9]*:../../devel/p5-File-Which
TEST_DEPENDS+=		p5-Test-Differences-[0-9]*:../../devel/p5-Test-Differences

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
