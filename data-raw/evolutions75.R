download.file(
  "https://www.openintro.org/stat/data/pokemon.csv",
  "data-raw/evolutions75.csv"
  )

evolutions75 <- read.csv("data-raw/evolutions75.csv", stringsAsFactors = F)
devtools::use_data(evolutions75, overwrite = T)
