#' Empirical prisoner's dilemma games from Nay and Vorobeychik
#'
#' A dataset containing 168,386 total rounds of play in 30 different
#' variations on the iterated prisoner's dilemma games.
#' The data comes from J.J. Nay and Y. Vorobeychik, "Predicting Human
#' Cooperation," PLOS ONE 11(5), e0155656 (2016).
#'
#' @format A data frame with 168,386 rows and 51 variables:
#' \describe{
#'   \item{period}{Which turn of the given game}
#'   \item{my.decision}{The player's move in this turn}
#'   \item{risk}{Boolean variable: 1 indicates stochastic payoffs, 0
#'               deterministic payoffs}
#'   \item{delta}{Probability the game ends after each round}
#'   \item{r1}{Normalized difference in payoff between both players cooperating
#'             and both defecting}
#'   \item{r2}{Normalized difference in payoff between both players cooperating
#'             and the payoff for being a sucker (cooperating when the opponent
#'             defects)}
#'   \item{error}{Probability that the player's intended move is switched to
#'                the opposite move}
#'   \item{data}{Which dataset did this game come from:
#'   AM = Andreoni & Miller;
#'   BR = Bereby-Meyer & Roth;
#'   DB = Dal Bo;
#'   DF = Dal Bo & Frechette;
#'   DO = Duffy & Ochs;
#'   FO = Friedman & Oprea;
#'   FR = Fudenberg, Rand, & Dreber;
#'   and KS = Kunreuther, Silvasi, Bradlow & Small}
#'   \item{my.decision1}{The player's move in the previous turn}
#'   \item{my.decision2}{The player's move two turns ago}
#'   \item{my.decision3}{The player's move three turns ago}
#'   \item{my.decision4}{The player's move four turns ago}
#'   \item{my.decision5}{The player's move five turns ago}
#'   \item{my.decision6}{The player's move six turns ago}
#'   \item{my.decision7}{The player's move seven turns ago}
#'   \item{my.decision8}{The player's move eight turns ago}
#'   \item{my.decision9}{The player's move nine turns ago}
#'   \item{other.decision1}{The opponent's move in the previous turn}
#'   \item{other.decision2}{The opponent's move two turns ago}
#'   \item{other.decision3}{The opponent's move three turns ago}
#'   \item{other.decision4}{The opponent's move four turns ago}
#'   \item{other.decision5}{The opponent's move five turns ago}
#'   \item{other.decision6}{The opponent's move six turns ago}
#'   \item{other.decision7}{The opponent's move seven turns ago}
#'   \item{other.decision8}{The opponent's move eight turns ago}
#'   \item{other.decision9}{The opponent's move nine turns ago}
#'   \item{my.payoff1}{The player's payoff in the previous turn}
#'   \item{my.payoff2}{The player's payoff two turns ago}
#'   \item{my.payoff3}{The player's payoff three turns ago}
#'   \item{my.payoff4}{The player's payoff four turns ago}
#'   \item{my.payoff5}{The player's payoff five turns ago}
#'   \item{my.payoff6}{The player's payoff six turns ago}
#'   \item{my.payoff7}{The player's payoff seven turns ago}
#'   \item{my.payoff8}{The player's payoff eight turns ago}
#'   \item{my.payoff9}{The player's payoff nine turns ago}
#'   \item{other.payoff1}{The opponent's payoff in the previous turn}
#'   \item{other.payoff2}{The opponent's payoff two turns ago}
#'   \item{other.payoff3}{The opponent's payoff three turns ago}
#'   \item{other.payoff4}{The opponent's payoff four turns ago}
#'   \item{other.payoff5}{The opponent's payoff five turns ago}
#'   \item{other.payoff6}{The opponent's payoff six turns ago}
#'   \item{other.payoff7}{The opponent's payoff seven turns ago}
#'   \item{other.payoff8}{The opponent's payoff eight turns ago}
#'   \item{other.payoff9}{The opponent's payoff nine turns ago}
#'   \item{r}{Reward: payoff when both players cooperate}
#'   \item{t}{Temptation: payoff when player defects and opponent cooperates}
#'   \item{s}{Sucker: Payoff when player cooperates and opponent defects}
#'   \item{p}{Punishment: payoff when both players defect}
#'   \item{infin}{Boolean: 1 indicates infinite game with probability delta of ending at each round; 0 indicates pre-determined number of rounds}
#'   \item{contin}{Boolean: 1 indicates the game is played in continuous time; 0 indicates discrete rounds}
#'   \item{group}{Which group (version of the game) is being played?}
#' }
#' @source \doi{10.1371/journal.pone.0155656}
"NV_games"
