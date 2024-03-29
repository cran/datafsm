## ----load.data.fsm------------------------------------------------------------
# Load and attach datafsm into your R session, making its functions available:
library(datafsm)

## ----cite.datafsm, eval=TRUE, include=TRUE------------------------------------
citation("datafsm")

## ----simulation_parameters, include=FALSE, eval=TRUE--------------------------
rounds <- 10
reps <- 1000
noise_level <- 0.05

## ----simulation_parameters, echo=TRUE, eval=FALSE-----------------------------
#  rounds <- 10
#  reps <- 1000
#  noise_level <- 0.05

## ----fake.data, eval=TRUE, include=TRUE---------------------------------------
seed1 <- 1372456261
seed2 <-  597693057
seed3 <-  805078823
set.seed(seed1)
cdata <- data.frame(outcome = NA,
                    period = rep(seq(rounds), reps),
                    my.decision1 = NA,
                    other.decision1 = NA)

#
# Prisoner's dilemma
#
pd_outcome <- function(player_1, player_2) {
  #
  # 1 = C
  # 2 = D
  #
  player_1  + 1
}

tit_for_tat <- function(last_round_self, last_round_opponent) {
    last_round_opponent
}

noisy_tit_for_tat <- function(last_round_self, last_round_opponent, noise_level) {
  if (runif(1,0,1) <= noise_level) {
    sample(0:1,1)
  } else {
    last_round_opponent
  }
}

for (i in seq_along(cdata$period)) {
  if (cdata$period[i] == 1) {
    my.decision <- sample(0:1,1, prob = c(1 - noise_level, noise_level))
    other.decision <- sample(0:1,1, prob = c(1 - noise_level, noise_level))
    cdata[i, "outcome"] <- pd_outcome(my.decision, other.decision)
  } else{
    my.last <- my.decision
    other.last <- other.decision
    my.decision <- noisy_tit_for_tat(my.last, other.last, noise_level)
    other.decision <- noisy_tit_for_tat(other.last, my.last, noise_level)
    cdata[i,c("outcome", "my.decision1", "other.decision1")] <- 
      c(pd_outcome(my.decision, other.decision), my.last, other.last)
  }
}

## ----cdata.table, eval=TRUE, echo=FALSE, results='asis'-----------------------
knitr::kable(head(cdata, 11))

## ----evolve.model, eval=TRUE, include=TRUE, message=FALSE, warning=FALSE, results='hide'----
set.seed(seed2)
res <- evolve_model(cdata, seed = seed3)

## ----plot.fsm, eval=TRUE, include=TRUE, fig.width=5, fig.height=4, fig.cap="Result of `plot()` method call on `ga_fsm` object."----
summary(res)
plot(res, action_label = ifelse(action_vec(res)==1, "C", "D"), 
     transition_label = c('cc','dc','cd','dd'))

## ----plot.evolution, eval=TRUE, include=TRUE, fig.width=8, fig.height=6, fig.cap="Result of `plot()` method call on ga object, which is obtained by calling `estimation_details()` on `ga_fsm` object."----
suppressMessages(library(GA))
plot(estimation_details(res))

## ----session.info, eval=TRUE, include=TRUE------------------------------------
sessionInfo()

