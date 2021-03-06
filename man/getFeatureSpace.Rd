% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getFeatureSpace.R
\name{getFeatureSpace}
\alias{getFeatureSpace}
\title{Get informative principal components}
\usage{
getFeatureSpace(object, pVar, varLim = 0.01, correction = "fdr",
  sig = 0.05)
}
\arguments{
\item{object}{An \code{scPred} object}

\item{pVar}{Prediction variable corresponding to a column in \code{metadata} slot}

\item{varLim}{Threshold to filter principal components based on variance explained.}

\item{correction}{Multiple testing correction method. Default: false discovery rate. See \code{p.adjust} function}

\item{sig}{Significance level to determine principal components explaining class identity}
}
\value{
A \code{scPred} object with two additional filled slots:
\itemize{
\item \code{features}: A data frame with significant principal components the following information:
\itemize{
\item PC: Principal component
\item pValue: p-value obtained from Mann-Whitney test
\item pValueAdj: Adjusted p-value according to \code{correction} parameter
\item expVar: Explained variance by the principal component
\item cumExpVar: All principal components are ranked accoriding to their frequency of ocurrence and their variance explained. 
This column contains the cumulative variance explained across the ranked principal components
}
\item \code{pVar}: Column name from metadata to use as the variable to predict using
the informative principal components. Informative principal components are selected based on this variable.
}
}
\description{
Given a prediction variable, finds a feature set of class-informative principal components. 
A Wilcoxon rank sum test is used to determine a difference between the score distributions of cell classes from the prediction variable.
}
\examples{

# Assign cell information to scPred object
# Cell information must be a data.frame with rownames as cell ids matching the eigendecomposed 
gene expression matrix rownames.

metadata(object) <- cellInfo

# Get feature space for column "cellType" in metadata slot

object <- getFeatureSpace(object = object, pVar = "cellType")

}
\author{
José Alquicira Hernández
}
\keyword{features}
\keyword{informative,}
\keyword{significant,}
