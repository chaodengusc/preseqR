\name{preseqR.interpolate.rSAC}
\alias{preseqR.interpolate.rSAC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Interpolating the number of species represented r or more times
}
\description{
Interpolating the expected number of species represented at least r times
in a subsample.
}
\usage{
preseqR.interpolate.rSAC(n, ss, r=1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
    A two-column matrix.  
    The first column is the frequency \eqn{j = 1,2,\dots}; and the second column
    is \eqn{n_j}, the number of species with each species represented \eqn{j}
    times in the initial sample. The first column must be sorted in an
    ascending order.
  }
  \item{ss}{
    An positive double equal to the step size between subsamples.
  }
  \item{r}{
    A positive integer. Default is 1
  }
}
\details{
  Assume the subsample is generated by subsampling from the given sample without
  replacement. The expected number of unique species represented at least r
  times in the subsample is then calculated by an expended version of the
  formula by Heck Jr, KL. et al. (1975).
}
\value{
  A two-column matrix for the number of species represented at least r times
  in a random sample. The first column is the size of the random sample; 
  the second column is the expected number of species represented at least r
  times in the sample.

  NULL if failed.
}
\references{
Heck Jr, K. L., van Belle, G., & Simberloff, D. (1975). 
Explicit calculation of the rarefaction diversity measurement and the
determination of sufficient sample size. Ecology, 1459-1461.
}
\author{
  Chao Deng
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
## load library
library(preseqR)

## import data
data(ShakespeareWordHist)

## The expected number of species represented twice or more in the subsample 
## The step size is 0.1 million
preseqR.interpolate.rSAC(n=ShakespeareWordHist, ss=1e5, r=2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Interpolation, r-SAC}