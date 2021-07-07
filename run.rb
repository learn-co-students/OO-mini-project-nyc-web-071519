require_relative 'app/models/Allergy.rb'
require_relative 'app/models/Ingredient.rb'
require_relative 'app/models/Recipe.rb'
require_relative 'app/models/RecipeCard.rb'
require_relative 'app/models/RecipeIngredient.rb'
require_relative 'app/models/User.rb'
require 'pry'

#users
u1 = User.new("Krunklebutt")
u2 = User.new("Tyler")
u3 = User.new("Matt")
u4 = User.new("Rutger")
#allergy
a1 = Allergy.new(u1, "nuts")
a2 = Allergy.new(u2, "nuts")
a3 = Allergy.new(u1, "cheese")
#ingredients
i1 = Ingredient.new("berries")
i2 = Ingredient.new("nuts")
i3 = Ingredient.new("cheese")
i4 = Ingredient.new("bread")
i5 = Ingredient.new("milk")
i6 = Ingredient.new("fruit loops")
i7 = Ingredient.new("eggs")
#recipe
r1 = Recipe.new("Nuts & Berries")
r2 = Recipe.new("Grilled Cheese")
r3 = Recipe.new("Fruit Loops")
r4 = Recipe.new("Eggs")

#recipe ingredients
ri1 = RecipeIngredient.new(r1, [i1, i2])
ril2 = RecipeIngredient.new(r2, [i3, i4])
ril3 = RecipeIngredient.new(r3, [i5, i6])
ril4 = RecipeIngredient.new(r4, [i7])
#recipe card
rc1 = RecipeCard.new(Time.now, 5, r1, u1)
rc2 = RecipeCard.new(Time.now, 4, r2, u1)
rc3 = RecipeCard.new(Time.now, 5, r3, u1)
rc4 = RecipeCard.new(Time.now, 1, r4, u1)
# rc3 = RecipeCard.new(Time.now, 1, r3, u1)


binding.pry
puts "Sup"