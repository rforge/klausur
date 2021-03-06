\name{sort.klausuR}
\alias{sort.klausuR}
\alias{"sort,klausuR-method"}
\alias{"sort,-methods"}
\title{Sort method for objects of class klausuR}
\arguments{
  \item{x}{An object of class \code{klausuR}}

  \item{decreasing}{Logical, whether sorting should be sone
  increasing or decreasing.}

  \item{sort.by}{An optional character string naming a
  variable to sort the results by. Defaults to \code{c()},
  i.e. no re-ordering.}
}
\description{
  Sort method for S4 objects of class klausuR
}
\details{
  Returns the given object, with global results and
  anonymized results sorted by the given variable.
}
\examples{
\dontrun{
klsr.obj <- klausur(data.obj)
sort(klsr.obj, sort.by="Points")
}
}
\author{
  m.eik michalke \email{meik.michalke@uni-duesseldorf.de}
}
\seealso{
  \code{\link[klausuR:klausur]{klausur}}
}
\keyword{methods}

