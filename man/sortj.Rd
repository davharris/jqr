% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sort.R
\name{sortj}
\alias{reverse}
\alias{sortj}
\alias{sortj_}
\title{Sort and related}
\usage{
sortj(.data, ...)

sortj_(.data, ..., .dots)

reverse(.data)
}
\arguments{
\item{.data}{input}

\item{...}{Comma separated list of unquoted variable names}

\item{.dots}{Used to work around non-standard evaluation}

\item{dots}{dots}
}
\description{
Sort and related
}
\examples{
# sort
'[8,3,null,6]' \%>\% sortj \%>\% jq
'[{"foo":4, "bar":10}, {"foo":3, "bar":100}, {"foo":2, "bar":1}]' \%>\% sortj(foo) \%>\% jq

# reverse order
'[1,2,3,4]' \%>\%  reverse \%>\% jq
}

