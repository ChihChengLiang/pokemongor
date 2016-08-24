#' Pokemon Go Moves
#'
#' Fast and charged moves of Pokemon
#'
#' @source \url{https://github.com/PokemonGoF/PokemonGo-Bot}, downloaded 2016-08-24
#' @format Data frame with columns
#' \describe{
#'  \item{id}{in game id}
#'  \item{name}
#'  \item{type}
#'  \item{damage}
#'  \item{duration}
#'  \item{energy}{fast moves charge energy, while charged moves consume energy}
#'  \item{dps}{damage per second}
#'  \item{move}{fast or charged move}
#' }
#' @examples
#'   moves
"moves"

#' Level To Combat Point Multiplier(cpm)
#'
#' Convert Pokemon level to Combat Point Multiplier(cpm)
#'
#' @source \url{https://github.com/PokemonGoF/PokemonGo-Bot}, downloaded 2016-08-24
#' @format Data frame with columns
#' \describe{
#'  \item{level}{trainer's level}
#'  \item{cpm}{Combat Point Multiplier}
#' }
#' @examples
#'   level_to_cpm
"level_to_cpm"


#' Items in Pokemon Go
#'
#' Items Ids and Names
#'
#' @source \url{https://github.com/PokemonGoF/PokemonGo-Bot}, downloaded 2016-08-24
#' @format Data frame with columns
#' \describe{
#'  \item{id}{join this id with data dumped from the game}
#'  \item{item}
#' }
#' @examples
#'   items
"items"

#' Pokemon Names in Taiwan
#'
#' @source \url{https://github.com/PokemonGoF/PokemonGo-Bot}, downloaded 2016-08-24
#' @format Data frame with columns
#' \describe{
#'  \item{index}
#'  \item{en_name}
#'  \item{zh_tw_name}
#' }
#' @examples
#'   pokemon_names_zh_tw
"pokemon_names_zh_tw"
