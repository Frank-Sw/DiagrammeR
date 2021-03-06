% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_graph_series_info.R
\name{get_graph_series_info}
\alias{get_graph_series_info}
\title{Get information on a graph series}
\usage{
get_graph_series_info(graph_series)
}
\arguments{
\item{graph_series}{a graph series object of type \code{dgr_graph_1D}.}
}
\value{
a data frame containing information on the graphs within the supplied
  graph series.
}
\description{
Obtain a data frame with information on the graphs within a graph series.
}
\examples{
# Create three graphs
graph_1 <-
  create_graph() \%>\%
  add_path(n = 4)

graph_2 <-
  create_graph() \%>\%
  add_cycle(n = 5)

graph_3 <-
  create_graph() \%>\%
  add_star(n = 6)

# Create an empty graph series
# and add the graphs
series <-
  create_graph_series() \%>\%
  add_graph_to_graph_series(
    graph = graph_1) \%>\%
  add_graph_to_graph_series(
    graph = graph_2) \%>\%
  add_graph_to_graph_series(
    graph = graph_3)

# Get information on the graphs in the series
series \%>\%
  get_graph_series_info()
}
