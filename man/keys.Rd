% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/keys.R
\name{keys}
\alias{del}
\alias{del_}
\alias{haskey}
\alias{haskey_}
\alias{keys}
\title{Operations on keys, or by keys}
\usage{
keys(.data)

del(.data, ...)

del_(.data, ..., .dots)

haskey(.data, ...)

haskey_(.data, ..., .dots)
}
\arguments{
\item{.data}{input}

\item{...}{Comma separated list of unquoted variable names}

\item{.dots}{Used to work around non-standard evaluation}

\item{dots}{dots}
}
\description{
\code{keys} takes no input, and retrieves keys. \code{del} deletes provided keys.
\code{haskey} checks if a json string has a key or keys.
}
\examples{
# get keys
str <- '{"foo": 5, "bar": 7}'
jq_(str, "keys")
str \%>\% keys() \%>\% jq

# delete by key name
jq_(str, "del(.bar)")
str \%>\% del(bar) \%>\% jq

# check for key existence
str3 <- '[[0,1], ["a","b","c"]]'
jq_(str3, "map(has(2))")
str3 \%>\% haskey(2) \%>\% jq
jq_(str3, "map(has(1,2))")
str3 \%>\% haskey(1,2) \%>\% jq
}

