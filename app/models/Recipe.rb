class Recipe

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        recipe_ingredient_helper.map{|i| i.ingredient}
    end

    def users
        recipe_cards_helper.map{|i| i.user}
    end

    def allergens(user)
        Users.allergens_helper.select{|i| i.user ==  user}
    end

    def self.most_popular
        self.all.map{|i| i.users.count}.max_by{|i| i}
      
    end

    def add_ingredients(ingredients_array)
        ingredients_array.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end


     def recipe_ingredient_helper
        RecipeIngredient.all.select{|i| i.recipe == self}
    end

    def recipe_cards_helper
        RecipeCard.all.select{|i| i.recipe == self}
    end

end