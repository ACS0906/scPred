% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/projectNewData.R
\name{projectNewData}
\alias{projectNewData}
\title{Project new data onto training principal components}
\usage{
projectNewData(object, newData, informative = TRUE)
}
\arguments{
\item{object}{An \code{scPred} object}

\item{newData}{A matrix object with cells as rows and genes (loci) as columns}

\item{informative}{Perfoms rotation using only informative principal components}
}
\value{
A data frame with the projection
}
\description{
Projects a new dataset into the principal components obtained from a training dataset
}
\examples{

# Prjects training discriminant principal axes onto test dataset. 
## By settint "informative = FALSE", all principal components
## (including non-informative) are projected.

projection <- projectNewData(object, expTest, informative = FALSE)

}
\author{
José Alquicira Hernández
}
\keyword{projection}
\keyword{test,}
\keyword{validation,}
