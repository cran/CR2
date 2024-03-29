% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robust_mixed.R
\name{robust_mixed}
\alias{robust_mixed}
\title{Cluster robust standard errors with degrees of freedom adjustments for lmerMod/lme objects}
\usage{
robust_mixed(m1, digits = 3, type = "CR2", satt = TRUE, Gname = NULL)
}
\arguments{
\item{m1}{The \code{lmerMod} or \code{lme} model object.}

\item{digits}{Number of decimal places to display.}

\item{type}{Type of cluster robust standard error to use ("CR2" or "CR0").}

\item{satt}{If Satterthwaite degrees of freedom are to be computed (if not, between-within df are used).}

\item{Gname}{Group/cluster name if more than two levels of clustering (does not work with lme).}
}
\value{
A data frame (\code{results}) with the cluster robust adjustments with p-values.
\item{Estimate}{The regression coefficient.}
\item{mb.se}{The model-based (regular, unadjusted) SE.}
\item{cr.se}{The cluster robust standard error.}
\item{df}{degrees of freedom: Satterthwaite or between-within.}
\item{p.val}{p-value using CR0/CR2 standard error.}
\item{stars}{stars showing statistical significance.}
}
\description{
Function to compute the CR2/CR0 cluster
robust standard errors (SE) with Bell and McCaffrey (2002)
degrees of freedom (dof) adjustments. Suitable even with a low number of clusters.
The model based (mb) and cluster robust standard errors are shown for comparison purposes.
}
\examples{
require(lme4)
data(sch25, package = 'CR2')
robust_mixed(lmer(math ~ male + minority + mses + mhmwk + (1|schid), data = sch25))
}
\references{
\cite{Bell, R., & McCaffrey, D. (2002). Bias reduction in standard errors for linear regression with multi-stage samples. Survey Methodology, 28, 169-182.
(\href{https://www150.statcan.gc.ca/n1/pub/12-001-x/2002002/article/9058-eng.pdf}{link})}

\cite{Liang, K.Y., & Zeger, S. L. (1986). Longitudinal data analysis using generalized linear models. \emph{Biometrika, 73}(1), 13-22.
(\href{https://academic.oup.com/biomet/article/73/1/13/246001}{link})
}
}
\author{
Francis Huang, \email{huangf@missouri.edu}

Bixi Zhang, \email{bixizhang@missouri.edu}
}
