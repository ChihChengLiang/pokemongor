
<!-- README.md is generated from README.Rmd. Please edit that file -->
Pokemongor
==========

Useful Datasets for Pokemon Researchers.

| Item                   | Title                                       |
|:-----------------------|:--------------------------------------------|
| evolutions75           | OpenIntro 75 pokemons and their evolutions. |
| forts                  | Forts Location Tainan                       |
| items                  | Items in Pokemon Go                         |
| level\_to\_cpm         | Level To Combat Point Multiplier(cpm)       |
| moves                  | Pokemon Go Moves                            |
| pokemon\_names         | Pokedex Names.                              |
| pokemon\_names\_zh\_tw | Pokemon Names in Taiwan                     |
| pokemon\_subjects      | Pokemon Subjects Collected by Trainers      |
| pokemons               | Pokemon Go Game Data.                       |
| taipei\_forts          | Forts Location Taipei                       |

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("ChihChengLiang/pokemongor")
```

Usage
-----

``` r
library(pokemongor)
show <- function(dataset) knitr::kable(head(dataset))
show(pokemon_names)
```

|  index| name       |
|------:|:-----------|
|      1| Bulbasaur  |
|      2| Ivysaur    |
|      3| Venusaur   |
|      4| Charmander |
|      5| Charmeleon |
|      6| Charizard  |

``` r
show(pokemons)
```

|  PkMn| Identifier | EvolvesFrom | EvolvesTo  |  EvoChainID|  EvoStage| EvolutionPips |  BaseStamina|  BaseAttack|  BaseDefense| Type1 | Type2  |  BaseCaptureRate|  BaseFleeRate|  CollisionRadiusM|  CollisionHeightM|  CollisionHeadRadiusM| MovementType |  MovementTimerS|  JumpTimeS|  AttackTimerS| QuickMoves            | CinematicMoves                          |  PokemonClass|  PokedexHeightM|  PokedexWeightKg|  HeightStdDev|  WeightStdDev| CandyFamily     |  CandyToEvolve| AnimTime                                                         |
|-----:|:-----------|:------------|:-----------|-----------:|---------:|:--------------|------------:|-----------:|------------:|:------|:-------|----------------:|-------------:|-----------------:|-----------------:|---------------------:|:-------------|---------------:|----------:|-------------:|:----------------------|:----------------------------------------|-------------:|---------------:|----------------:|-------------:|-------------:|:----------------|--------------:|:-----------------------------------------------------------------|
|     1| Bulbasaur  | 0           | Ivysaur    |           1|         1| NORMAL        |           90|         126|          126| GRASS | POISON |             0.16|          0.10|              0.38|              0.65|                  0.27| JUMP         |              10|       1.15|            29| Vine Whip, Tackle     | Sludge Bomb, Seed Bomb, Power Whip      |             1|             0.7|              6.9|          0.09|          0.86| 001\_BULBASAUR  |             25| 6d56d53fdaac2a3f6d56d53f93a9ea3f0000000036ab0a403333b33fbfbbbb3f |
|     2| Ivysaur    | Bulbasaur   | Venusaur   |           1|         2| NORMAL        |          120|         156|          158| GRASS | POISON |             0.08|          0.07|              0.32|              0.64|                  0.25| JUMP         |              23|       1.50|             8| Razor Leaf, Vine Whip | Sludge Bomb, Solar Beam, Power Whip     |             1|             1.0|             13.0|          0.13|          1.63| 001\_BULBASAUR  |            100| 36ab2a40daac2a3f6d56d53f36ab0a4000000000000000406d56d53fdbdddd3f |
|     3| Venusaur   | Ivysaur     | 0          |           1|         3| NORMAL        |          160|         198|          200| GRASS | POISON |             0.04|          0.05|              0.76|              1.03|                  0.38| JUMP         |              11|       1.25|             4| Razor Leaf, Vine Whip | Sludge Bomb, Petal Blizzard, Solar Beam |             1|             2.0|            100.0|          0.25|         12.50| 001\_BULBASAUR  |              0| 6ade1d40daac2a3f6d56d53f93a9ea3f00000000fd8708400000004046440440 |
|     4| Charmander | 0           | Charmeleon |           2|         1| NORMAL        |           78|         128|          108| FIRE  | NONE   |             0.16|          0.10|              0.16|              0.47|                  0.16| JUMP         |              29|       1.25|            10| Ember, Scratch        | Flame Charge, Flame Burst, Flamethrower |             1|             0.6|              8.5|          0.08|          1.06| 004\_CHARMANDER |             25| fd870840daac2a3f6d56d53f93a9ea3f00000000fd8708406d56953fa8aaaa3f |
|     5| Charmeleon | Charmander  | Charizard  |           2|         2| NORMAL        |          116|         160|          140| FIRE  | NONE   |             0.08|          0.07|              0.26|              0.77|                  0.23| JUMP         |              23|       1.00|             8| Ember, Scratch        | Fire Punch, Flame Burst, Flamethrower   |             1|             1.1|             19.0|          0.14|          2.38| 004\_CHARMANDER |            100| 07f0ee3fdaac2a3f93a9ea3f0000c03f5655d540ca5415400000004025222240 |
|     6| Charizard  | Charmeleon  | 0          |           2|         3| NORMAL        |          156|         212|          182| FIRE  | FLYING |             0.04|          0.05|              0.41|              1.01|                  0.20| FLYING       |              11|       1.00|             4| Ember, Wing Attack    | Fire Blast, Dragon Claw, Flamethrower   |             1|             1.7|             90.5|          0.21|         11.31| 004\_CHARMANDER |              0| cdcc0c40daac2a3f6d56d53f0de05d3f5655d54000000040cdcccc3f00000040 |

``` r
show(evolutions75)
```

| name    | species |   cp|   hp|  weight|  height|  power\_up\_stardust|  power\_up\_candy| attack\_weak | attack\_weak\_type |  attack\_weak\_value| attack\_strong | attack\_strong\_type |  attack\_strong\_value|  cp\_new|  hp\_new|  weight\_new|  height\_new|  power\_up\_stardust\_new|  power\_up\_candy\_new| attack\_weak\_new | attack\_weak\_type\_new |  attack\_weak\_value\_new| attack\_strong\_new | attack\_strong\_type\_new |  attack\_strong\_value\_new| notes |
|:--------|:--------|----:|----:|-------:|-------:|--------------------:|-----------------:|:-------------|:-------------------|--------------------:|:---------------|:---------------------|----------------------:|--------:|--------:|------------:|------------:|-------------------------:|----------------------:|:------------------|:------------------------|-------------------------:|:--------------------|:--------------------------|---------------------------:|:------|
| Pidgey1 | Pidgey  |  384|   56|    2.31|    0.34|                 2500|                 2| Tackle       | Normal             |                   12| Aerial Ace     | Flying               |                     30|      694|       84|         2.60|         1.24|                      2500|                      2| Steel Wing        | Steel                   |                        15| Air Cutter          | Flying                    |                          30|       |
| Pidgey2 | Pidgey  |  366|   54|    1.67|    0.29|                 2500|                 2| Quick Attack | Normal             |                   10| Twister        | Dragon               |                     25|      669|       81|         1.93|         1.05|                      2500|                      2| Wing Attack       | Flying                  |                         9| Air Cutter          | Flying                    |                          30|       |
| Pidgey3 | Pidgey  |  353|   55|    1.94|    0.30|                 3000|                 3| Quick Attack | Normal             |                   10| Aerial Ace     | Flying               |                     30|      659|       83|         3.51|         1.11|                      3000|                      3| Wing Attack       | Flying                  |                         9| Air Cutter          | Flying                    |                          30|       |
| Pidgey4 | Pidgey  |  338|   51|    1.73|    0.31|                 3000|                 3| Tackle       | Normal             |                   12| Air Cutter     | Flying               |                     30|      640|       79|        30.00|         1.12|                      3000|                      3| Steel Wing        | Steel                   |                        15| Air Cutter          | Flying                    |                          30|       |
| Pidgey5 | Pidgey  |  242|   45|    1.44|    0.27|                 1900|                 2| Quick Attack | Normal             |                   10| Air Cutter     | Flying               |                     30|      457|       69|         1.42|         0.98|                      1900|                      2| Wing Attack       | Flying                  |                         9| Twister             | Dragon                    |                          25|       |
| Pidgey6 | Pidgey  |  129|   35|    2.07|    0.35|                  800|                 1| Quick Attack | Normal             |                   10| Air Cutter     | Flying               |                     30|      243|       52|        30.00|         1.27|                       800|                      1| Wing Attack       | Flying                  |                         9| Aerial Ace          | Flying                    |                          30|       |

``` r

pokemon_subjects %>%
  left_join(pokemon_names, by = c("pokemon_id"="index")) %>%
  count(name, sort=T)
#> # A tibble: 51 x 2
#>         name     n
#>        <chr> <int>
#> 1     Pidgey    73
#> 2    Rattata    30
#> 3       <NA>    18
#> 4  Growlithe    11
#> 5     Weedle    11
#> 6      Ekans    10
#> 7    Spearow    10
#> 8     Meowth     8
#> 9     Pinsir     7
#> 10   Poliwag     7
#> # ... with 41 more rows
```
