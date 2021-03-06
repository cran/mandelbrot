% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper.R
\name{mandelbrot}
\alias{mandelbrot}
\alias{mandelbrot0}
\title{Calculate the Mandelbrot set}
\usage{
mandelbrot(xlim = c(-2, 2), ylim = c(-2, 2), resolution = 600,
  iterations = 50)

mandelbrot0(xlim = c(-2, 2), ylim = c(-2, 2), resolution = 600,
  iterations = 50)
}
\arguments{
\item{xlim}{limits of x axis (real part)}

\item{ylim}{limits of y axis (imaginary part)}

\item{resolution}{either an integer \eqn{n} for \eqn{n^2} pixels
or a list with x and y components specifying the resolution
in each direction (e.g. \code{list(x = 500, y = 500)})}

\item{iterations}{maximum number of iterations to
evaluate each case}
}
\value{
a \code{mandelbrot} structure with components: \code{x} a vector
  of the real parts of the x-axis; \code{y} the imaginary parts of each
  number (the y-axis); \code{z} a matrix of the number of iterations that
  \eqn{|z|<2}
}
\description{
Generates a view on the Mandelbrot set
using an underlying C function.
}
\details{
\code{mandelbrot0} is an experimental interface
for generating tidy data.frames faster than
\code{as.data.frame(mandelbrot())}.
}
\section{Mandelbrot set}{

In brief, the Mandelbrot set contains the complex numbers
where the 0 orbit of the following function remains
bounded (\eqn{<2}):
\deqn{f_{z+1} = z^2 + c}

For information and discussion on the Mandelbrot and
related sets, one great resource is
\href{https://plus.maths.org/content/unveiling-mandelbrot-set}{plus.maths.org}.
There's also a popular
\href{https://www.youtube.com/watch?v=NGMRB4O922I}{YouTube video by Numberphile}.
}

\section{Credits}{

Wraps original C code by Mario dos Reis, September 2003.
}

\references{
\url{https://stat.ethz.ch/pipermail/r-help/2003-October/039773.html}
  \url{http://people.cryst.bbk.ac.uk/~fdosr01/Rfractals/index.html}
}
