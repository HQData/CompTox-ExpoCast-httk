% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_height_weight.R
\name{gen_height_weight}
\alias{gen_height_weight}
\title{Generate heights and weights for a virtual population.}
\usage{
gen_height_weight(hbw_dt)
}
\arguments{
\item{hbw_dt}{A data.table describing the virtual population by race, gender, 
and age (in years and months). Must have variables \code{gender}, 
\code{reth}, \code{age}, and \code{age.years}.}
}
\value{
The same data.table with two new variables added: \code{weight}
 and \code{height}. Respectively, these give individual body weights in
 kg, and individual heights in cm.
}
\description{
Generate heights and weights for a virtual population.
}
\references{Ring, Caroline L., et al. "Identifying populations sensitive to environmental chemicals by simulating toxicokinetic variability." Environment International 106 (2017): 105-118.}
