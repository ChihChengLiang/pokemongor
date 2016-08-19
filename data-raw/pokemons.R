library(magrittr)
library(dplyr)

gist_url <- "https://gist.githubusercontent.com/noxwyll/8c821408b1d943c3e500d91d77266368/raw/f264e42f2e83bbe845841717f74b276c9801ba7d/GAME_MASTER_POKEMON_v0_2.tsv"
pokemon_df <- read.table(gist_url, sep = "\t", header = T, stringsAsFactors = F)

fix_decimal_marks <- function(vector) vector %>% gsub(",", ".", .) %>% as.numeric()
pokemon_df_clean <- pokemon_df %>%
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

pokemon_names <- pokemon_df_clean %>% select(index=PkMn, name=Identifier)

pokemon_df %>% write.csv("data-raw/pokemons.csv", row.names = F)
pokemon_df_clean %>% save(file="data/pokemons.rda")
pokemon_names %>% save(file="data/pokemon_names.rda")
