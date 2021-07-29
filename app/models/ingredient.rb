class Ingredient < ApplicationRecord
  belongs_to :recipe

  MEASUREMENTS = {
    "g" => "gram",
    "kg" => "kilo",
    "tbs" => "table spoon",
    "tsp" => "tea spoon",
    "l" => "litre",
    "ml" => "millilitre"
  }

  
end
