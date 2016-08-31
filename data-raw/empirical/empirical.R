library(jsonlite)
library(magrittr)
library(dplyr)
library(rlist)


extract_pokemon_from_inventory <- function(bot_name) bot_name %>%
  paste0("data-raw/empirical/inventory-", ., ".json") %>%
  fromJSON(simplifyVector = F) %>%
  list.select(inventory_item_data) %>%
  list.ungroup %>%
  list.filter("pokemon_data" %in% names(.)) %>%
  list.ungroup %>%
  bind_rows %>%
  mutate(trainer=bot_name)

pokemon_subjects <- c("bot1", "bot2") %>%
  lapply(extract_pokemon_from_inventory) %>%
  bind_rows %>%
  mutate_each(
    funs(as.character),
    captured_cell_id,
    creation_time_ms
    ) %>%
  select(trainer, id, creation_time_ms,
         pokemon_id, captured_cell_id,
         pokeball, height_m, weight_kg,
         cp, stamina_max, stamina,
         move_1, move_2,
         individual_attack, individual_defense,
         individual_stamina, cp_multiplier,
         from_fort, is_egg, egg_km_walked_target,
         egg_incubator_id)


extract_forts <- function(file_path) file_path %>%
  fromJSON(simplifyVector = F) %$%
  cells %>%
  list.filter("forts" %in% names(.)) %>%
  list.select(forts) %>%
  list.ungroup(2) %>%
  lapply(list.flatten) %>%
  bind_rows() %>%
  select(id, type, latitude, longitude, enabled,
         last_modified_timestamp_ms,
         cooldown_complete_timestamp_ms,
         active_fort_modifier,
         owned_by_team,
         guard_pokemon_id,
         gym_points,
         is_in_battle) %>%
  mutate_each(funs(as.character),
              last_modified_timestamp_ms,
              cooldown_complete_timestamp_ms)

forts <- "data-raw/empirical/location-bot2.json" %>% extract_forts
taipei_forts <- "data-raw/empirical/location-Taipei1.json" %>% extract_forts

devtools::use_data(pokemon_subjects, overwrite = T)
devtools::use_data(forts, overwrite = T)
devtools::use_data(taipei_forts, overwrite = T)
