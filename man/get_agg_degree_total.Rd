% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_agg_degree_total.R
\name{get_agg_degree_total}
\alias{get_agg_degree_total}
\title{Get an aggregate value from the total degree of nodes}
\usage{
get_agg_degree_total(graph, agg, conditions = NULL)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph}.}

\item{agg}{the aggregation function to use for summarizing total degree
values from graph nodes. The following aggregation functions can be used:
\code{sum}, \code{min}, \code{max}, \code{mean}, or \code{median}.}

\item{conditions}{an option to use filtering conditions for the nodes to
consider.}
}
\value{
a vector with an aggregate total degree value.
}
\description{
Get a single, aggregate value from the total degree values for all nodes in a
  graph, or, a subset of graph nodes.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph() \%>\%
  add_gnm_graph(
    n = 20,
    m = 35,
    set_seed = 23) \%>\%
  set_node_attrs(
    node_attr = value,
    values = rnorm(
      n = count_nodes(.),
      mean = 5,
      sd = 1) \%>\% round(1))

# Get the mean total degree
# value from all nodes in
# the graph
graph \%>\%
  get_agg_degree_total(
    agg = "mean")

# Other aggregation functions
# can be used (`min`, `max`,
# `median`, `sum`); let's get
# the median in this example
graph \%>\%
  get_agg_degree_total(
    agg = "median")

# The aggregation of total
# degree can occur for a
# subset of the graph nodes
# and this is made possible
# by specifying `conditions`
# for the nodes
graph \%>\%
  get_agg_degree_total(
    agg = "mean",
    conditions = value < 5.0)
}
