#' Pokemon Subjects Collected by Trainers
#'
#' Yes, conducting pokemon studies without transfering
#' all your pokemons to a doctor is possible. The downside
#' is you are not rewarded with a candy.
#'
#' @source This package
#' @format Data frame with columns
#' \describe{
#'  \item{trainer}{name of the trainer}
#'  \item{id}{id of pokemon}
#'  \item{creation_time_ms}
#'  \item{pokemon_id}
#'  \item{captured_cell_id}
#'  \item{pokeball}
#'  \item{height_m}
#'  \item{weight_kg}
#'  ...
#' }
#' @examples
#'   pokemon_subjects
"pokemon_subjects"

#' Forts Location
#'
#' Latitudes and longitudes of forts and gyms in Tainan.
#'
#' @source This package
#' @format Data frame with columns
#' \describe{
#'  \item{id}
#'  \item{type}{1s are forts and NAs are gyms}
#'  \item{latitude}
#'  \item{longitude}
#'  \item{enabled}
#'  \item{last_modified_timestamp_ms}
#'  \item{cooldown_complete_timestamp_ms}
#'  \item{active_fort_modifier}
#'  \item{owned_by_team}
#'  \item{guard_pokemon_id}
#'  \item{gym_points}
#'  \item{is_in_battle}
#' }
#' @examples
#'   forts
"forts"
