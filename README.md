
<!-- README.md is generated from README.Rmd. Please edit that file -->

# experimentdatar <img src="man/figures/logo.png" align="right" height=140/>

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/itamarcaspi/experimentdatar.svg?branch=master)](https://travis-ci.org/itamarcaspi/experimentdatar)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/itamarcaspi/experimentdatar?branch=master&svg=true)](https://ci.appveyor.com/project/itamarcaspi/experimentdatar)

The `experimentdatar` data package contains publicly available datasets
that were used in Susan Athey and Guido Imbens’ course [“Machine
Learning and
Econometrics”](https://www.aeaweb.org/conference/cont-ed/2018-webcasts)
(AEA continuing Education, 2018). The datasets are conveniently packed
for R users.

## Installation

You can install the **development** version from
[GitHub](https://github.com/itamarcaspi/experimentdatar/)

``` r
# install.packages("devtools")
devtools::install_github("itamarcaspi/experimentdatar")
```

## Usage

Load `experimentdatar` and other required libraries

``` r
library(dplyr)
library(experimentdatar)
```

Load the `social` dataset and display the response and treatment
variables

``` r
data(social)  
social %>% 
  select(outcome_voted, treat_neighbors) %>% 
  head()
```

    ## # A tibble: 6 x 2
    ##   outcome_voted treat_neighbors
    ##           <int>           <int>
    ## 1             0               0
    ## 2             1               0
    ## 3             1               0
    ## 4             0               0
    ## 5             0               0
    ## 6             0               0

There is also a function `dataDetails()` that opens the original paper
where the data was used

``` r
dataDetails("social")
```

## List of available datasets

  - `charitable`: Data used for the paper “Does Price matter in
    charitable giving? Evidence from a large-Scale Natural Field
    experiment”  
    by Karlan and List (2007).

  - `IVdataset`: Data used for the paper “Does compulsory school
    attendance affect schooling and earnings?”  
    by Angrist and Krueger (1991) and related papers.

  - `mobilization`: Data for the paper “Comparing Experimental and
    Matching Methods Using a Large-Scale Voter Mobilization
    Experiment”  
    by Arceneaux, Gerber, and Green (2006).

  - `vouchers`: Data for the paper “Vouchers for Private Schooling in
    Colombia: Evidence from a Randomized Natural Experiment”  
    by Angrist, Bettinger, Bloom, King, and Kremer (2002).

  - `secrecy`: Data for the paper “Ballot Secrecy Concerns and Voter
    Mobilization: New Experimental Evidence about Message Source,
    Context, and the Duration of Mobilization Effects”  
    by Gerber, Hubers, Biggers, and Hendry (2014).

  - `social`: Data for the paper “Social Pressure and Voter Turnout:
    Evidence from a Large-Scale Field Experiment”  
    by Gerber, Green, and Larimer (2008).

  - `welfare`: Data for the paper “Modeling heterogeneous treatment
    effects in survey experiments with Bayesian Additive Regression
    Trees”  
    by Green and Kern (2012).

## Code of conduct

Please note that the ‘experimentdatar’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
