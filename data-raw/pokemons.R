library(magrittr)
library(dplyr)

gist_url <- "https://gist.githubusercontent.com/noxwyll/8c821408b1d943c3e500d91d77266368/raw/f264e42f2e83bbe845841717f74b276c9801ba7d/GAME_MASTER_POKEMON_v0_2.tsv"
pokemon_raw <- read.table(gist_url, sep = "\t", header = T, stringsAsFactors = F)

fix_decimal_marks <- function(vector) vector %>% gsub(",", ".", .) %>% as.numeric()
pokemons <- pokemon_raw %>%
  mutate_each(
    funs(fix_decimal_marks),
    BaseCaptureRate,
    BaseFleeRate,
    CollisionRadiusM, CollisionHeightM, CollisionHeadRadiusM,
    MovementTimerS, JumpTimeS, AttackTimerS,
    PokemonClass,
    PokedexHeightM, PokedexWeightKg,
    HeightStdDev, WeightStdDev
  )

pokemon_names <- pokemons %>% select(index=PkMn, name=Identifier)

pokemons %>% write.csv("data-raw/pokemons.csv", row.names = F)

devtools::use_data(pokemon_names, overwrite = TRUE)
devtools::use_data(pokemons, overwrite = TRUE)
