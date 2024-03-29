# datafsm 0.2.4 

* Fix error in testing where I created a matrix from a vector of length 8
  specifying 2 columns and 2 rows.
* Fix obsolete URL `http://www.jstatsoft.org` to `https://www.jstatsoft.org`.
* Use new `\doi` tag for sources in Rd documentation where the URL pointed to
  `https://doi.org/`.

# datafsm 0.2.3

* Replace dependency on the `tidyverse` package with dependencies on the 
  specific packages from `tidyverse`: `dplyr`, `tidyr`, and `purrr`.

# datafsm 0.2.2

* Rewrote covariate testing in `fitnessCPP` to fix memory access errors.
* Added new vignette, giving an example using real data from Fudenberg,
  Rand, and Dreber.
* Change progress reports to use `message()` and `warning()` instead of 
  `print()` and `cat()`
* Added new data set with iterated prisoner's dilemma games from Nay and 
  Vorobeychik (2016).

# datafsm 0.2.1

* Updated tests to work with forthcoming `testthat` version 2.0.0

# datafsm 0.2.0

* Updated to use new R native-routine registration and disable symbol search 
  using `Rcpp::compileAttributes()`.

# datafsm 0.1.2

* Fixed line dropping NZV vars (line 211 of evolve_model.R)
* Changed all occurrences of `maxfitness` to `maxFitness` to comply with new 
  `GA` version soon to be on CRAN.

# datafsm 0.1.1

Second release of package. 

* Updated vignette to properly simulate tit-for-tat data, and set a seed. 
  Added FRD data vignette to show more advanced use of package on real data.
* Changed `stop` to `warning` if `length(names) > 3`. 
  Added some text to `stop()` for `ncol(data) != inputs`.
* Made `var_imp` more modular. 
*  Took out core computation and put it in its own function. 
*  Added a `var_imp2()` function that uses output of this new `importance()` 
  function and returns results for every element of state matrix, not just the 
  `colSums` and puts that in a new slot in the main object called `varImp2`
  `var_imp2()` returns raw performance scores.
* Added documentation for `varImp2`. Added check for another (4th) covariate 
  value in C++. 
* Test for main function now expects a warning rather than an error for when 
  we have more than 3 predictors.
* **Biggest change:** Added `evolve_model_ntimes()` function to run 
  `evolve_model()` `n` times and return either the best or all of them, 
  depending on user specification. 
* In `evolve_model()` instead of `missing()`, now use `is.null()` so 
  `evolve_model` can be called inside other functions easily.

# datafsm 0.1

First release of package.
