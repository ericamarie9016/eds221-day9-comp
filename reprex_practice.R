
# Practicing Reprex ---------------------------------------------------------

library(tidyverse)
library(palmerpenguins)

penguins |> 
  select(species, body_mass_g, flipper_length_mm, year) |> 
  filter(species == "Chinstrap") |> 
  str_to_lower(species) |> 
  group_by(island) |> 
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))
# Error in stri_trans_tolower(string, locale = locale) :  object 'species' not found

# Reprex

# Simplify packages necessary
library(tidyverse)
library(reprex)

# Find or create simple dataset
glimpse(warpbreaks)

warpbreaks |> 
  str_to_lower(wool)
# Simple and same error

# reprex()


## FIXING reprex
library(tidyverse)
warpbreaks |> 
  mutate(lower_wool = str_to_lower(wool))


### Reprex with a Synthesized Data Frame

library(tidyverse)

Meals <- tribble(
  ~Upper, ~meal,
  "Breakfast", 1,
  "Lunch", 2,
  "Dinner", 3,
  "Snacks", 4,
  "Dessert", 6
)
Meals |> 
  mutate(lower_meal = str_to_lower(Upper))
