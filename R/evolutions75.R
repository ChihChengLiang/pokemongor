#' OpenIntro 75 pokemons and their evolutions.
#'
#' This data set covers 75 Pokémon evolutions spread across
#' four species. A wide set of variables are provided,
#' allowing a deeper dive into what characteristics are
#' important in predicting a Pokémon's final combat power (CP).
#'
#' @source \url{https://www.openintro.org/stat/data/?data=pokemon}, downloaded 2016-08-21
#' @format Data frame with columns
#' \describe{
#'  \item{name}{A unique name given to the Pokémon}
#'  \item{species}{The Pokémon's type, e.g. Pidgey.}
#'  \item{cp}{Pre-evolution Combat Power, which is a summary of the Pokémon's strength for battling prior to the evolution of the Pokémon.}
#'  \item{hp}{Pre-evolution Hit Points, which is a summary of how difficult it is to weaken the Pokémon in a battle.}
#'  \item{weight}{Pre-evolution weight, in kilograms.}
#'  \item{height}{Pre-evolution height, in meters.}
#'  \item{power_up_stardust}{Pre-evolution stardust required to power up the Pokémon.}
#'  \item{power_up_candy}{Pre-evolution candy required to power up the Pokémon.}
#'  \item{attack_weak}{The name of the pre-evolution weaker attack of the Pokémon.}
#'  \item{attack_weak_type}{The type of the pre-evolution weaker attack.}
#'  \item{attack_weak_value}{The damage done by the pre-evolution weaker attack.}
#'  \item{attack_strong}{The name of the pre-evolution stronger attack.}
#'  \item{attack_strong_type}{The type of the pre-evolution stronger attack.}
#'  \item{attack_strong_value}{The damage done by the pre-evolution stronger attack.}
#'  \item{cp_new}{Post-evolution Combat Power.}
#'  \item{hp_new}{Post-evolution Hit Points.}
#'  \item{weight_new}{Post-evolution weight, in kilograms.}
#'  \item{height_new}{Post-evolution height, in meters.}
#'  \item{power_up_stardust_new}{Post-evolution stardust required to power up the Pokémon.}
#'  \item{power_up_candy_new}{Post-evolution candy required to power up the Pokémon.}
#'  \item{attack_weak_new}{The name of the post-evolution weaker attack.}
#'  \item{attack_weak_type_new}{The type of the post-evolution weaker attack.}
#'  \item{attack_weak_value_new}{The damage done by the post-evolution weaker attack.}
#'  \item{attack_strong_new}{The name of the post-evolution stronger attack.}
#'  \item{attack_strong_type_new}{The type of the post-evolution stronger attack.}
#'  \item{attack_strong_value_new}{The damage done by the post-evolution stronger attack.}
#'  \item{notes}{Any additional notes made while collecting the data.}
#' }
#' @examples
#' evolutions75
"evolutions75"
