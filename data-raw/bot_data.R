library(jsonlite)
library(dplyr)
library(pokemongor)


base_url <- "https://raw.githubusercontent.com/PokemonGoF/PokemonGo-Bot/master/data/"

jsons<- c("fast_moves.json", "charged_moves.json", "level_to_cpm.json", "items.json", "locales/zh_tw.json")

lapply(
  jsons,
  function(json_path) paste0(base_url, json_path) %>%
    download.file(
      destfile=paste0("data-raw/", basename(json_path))
      )
  )

extract_named_vector <- function(json_list) sapply(json_list, function(x) x )
kv_json2dataframe <- function(json_list, key_name, value_name) json_list %>%
  extract_named_vector %>%
  data.frame(
    key_col=names(.),
    value_col=.,
    row.names = NULL
  ) %>%
  `colnames<-`(c(key_name, value_name))


# -------------------

fast_moves <- "data-raw/fast_moves.json" %>% fromJSON %>% mutate(move = "fast")
charged_moves <- "data-raw/charged_moves.json" %>% fromJSON %>% mutate(move = "charged")

moves <- fast_moves %>% bind_rows(charged_moves)


level_to_cpm <- "data-raw/level_to_cpm.json" %>%
  fromJSON() %>%
  kv_json2dataframe("level", "cpm")

items <- "data-raw/items.json" %>%
  fromJSON() %>%
  kv_json2dataframe("id", "item")

pokemon_names_zh_tw <- "data-raw/zh_tw.json" %>%
  fromJSON() %>%
  kv_json2dataframe("en_name", "zh_tw_name") %>%
  right_join(pokemon_names, by=c("en_name"="name")) %>%
  select(index, en_name, zh_tw_name)

pokemon_names_zh_tw %<>%
  `[<-`(29, "zh_tw_name", "尼多蘭") %>%
  `[<-`(32, "zh_tw_name", "尼多朗") %>%
  `[<-`(83, "zh_tw_name", "大蔥鴨") %>%
  `[<-`(122, "zh_tw_name", "吸盤魔偶")


devtools::use_data(moves, overwrite = T)
devtools::use_data(level_to_cpm, overwrite = T)
devtools::use_data(items, overwrite = T)
devtools::use_data(pokemon_names_zh_tw, overwrite = T)
