% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FARS_function.R
\name{fars_read}
\alias{fars_read}
\title{Read data}
\usage{
fars_read(filename)
}
\arguments{
\item{filename}{A string with the full name of a file in CSV format. This
function returns an error, if the file does not exist in the directory.}
}
\value{
This function returns a data frame in tibble format.
}
\description{
This function reads data in CSV format into R.
First, it checks whether the file already exists in the working directory.
If the file does not exist, you get an error message.
Second, if the CSV file exists, it is read into R.
Third, the data are converted to a tibble.
}
\examples{
\dontrun{
fars_read("accident_2013.csv")
fars_read("accident_2014.csv")
fars_read("accident_2015.csv")
}
}
