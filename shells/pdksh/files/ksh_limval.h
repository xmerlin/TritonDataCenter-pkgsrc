/*	$NetBSD: ksh_limval.h,v 1.2 2008/05/31 16:47:36 tnn Exp $	*/

/* Wrapper around the values.h/limits.h includes/ifdefs */
/* $NetBSD: ksh_limval.h,v 1.2 2008/05/31 16:47:36 tnn Exp $ */

#ifdef HAVE_VALUES_H
# include <values.h>
#endif /* HAVE_VALUES_H */
/* limits.h is included in sh.h */

#ifndef DMAXEXP
# define DMAXEXP	128	/* should be big enough */
#endif

#ifndef BITSPERBYTE
# ifdef CHAR_BIT
#  define BITSPERBYTE	CHAR_BIT
# else
#  define BITSPERBYTE	8	/* probably true.. */
# endif
#endif

#ifndef BITS
# define BITS(t)	(BITSPERBYTE * sizeof(t))
#endif
