#' Pokemon Go Game Data.
#'
#' Pokemon Go 151 pokemons' basic parameters extracted from rotobuf file.
#'
#' @source \url{https://gist.github.com/noxwyll/8c821408b1d943c3e500d91d77266368/f264e42f2e83bbe845841717f74b276c9801ba7d}, downloaded 2016-08-19
#' @format Data frame with columns
#' \describe{
#'  \item{PkMn}{Integer Pokedex index of the pokemon}
#'  \item{Identifier}{Proper name of pokemon}
#'  \item{EvolvesFrom}
#'  \item{EvolvesTo}
#'  \item{EvoChainID}
#'  \item{EvoStage}
#'  \item{EvolutionPips}
#'  ...
#' }
#' @examples
#' pokemons
"pokemons"
