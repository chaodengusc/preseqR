preseqR
=======

Code in this repository aims to make the functionality of Preseq available
in the R statistical computing environment. There are two ways this is
supposed to work:

  1.  The basic functionality of the preseq program, initially focusing only
      on library complexity, will be available. The specific function names
      will be indicated below.
  2.  The mathematical routines for doing rational function approximation via
      continued fractions will be implemented as a wrapper for our existing
      functionality in C++.

See <http://cran.r-project.org/web/packages/preseqR/index.html> for details.


UPDATES TO VERSION 2.0.0
========================================================================
We have added new functions, which include "mincount" as part of their function names,
to estimate the number of species represented r or more times in a random sample.


UPDATES TO VERSION 1.2.1
========================================================================
We have added an option to make use of the asymptotic behavior of the target
accumulation curve.
