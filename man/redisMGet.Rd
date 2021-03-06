\name{redisMGet}
\alias{redisMGet}
\title{Retrieve one or more values from Redis.}
\description{Retrieve values corresponding to the specified list of keys. 
}
\usage{
redisMGet(keys, raw = FALSE)
}
\arguments{
  \item{keys}{A vector or list of character strings  corresponding to 
keys to retrieve.}
  \item{raw}{Set \code{raw=TRUE} to skip de-serialization of the returned
values. }
}
\value{
A list of retrieved key/value pairs. Missing values return NULL.
}
\details{
Values are returned in a list with names corresponding to keys. The \code{raw}
argument is used to retrieve binary data from other languages.
}
\references{
http://redis.io/commands
}
\author{
B. W. Lewis
}
\seealso{
\code{\link{redisMSet}}
}
\examples{
\dontrun{
redisSet('x',runif(5))
redisSet('y',runif(5))
redisMGet(c('x','y'))
}
}
