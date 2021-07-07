class User

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def recipe_cards_helper
        RecipeCard.all.select{|i| i.user == self}
    end

    def recipes
        recipe_cards_helper.map{|i| i.recipe}
    end

    def add_recipe_card(date, rating, recipe_inst)
        RecipeCard.new(date, rating, recipe_inst, self)
    end

    def allergens_helper
        Allergy.all.select{|i| i.user == self}
    end

    def declare_allergies(ingredient)
        Allergy.new(self, ingredient)
    end

    def top_three_recipes
        recipe_cards_helper.sort_by{|i| i.rating}.reverse[0..2].map{|i| i.recipe}     
    end

    def most_recent_recipe
        recipe_cards_helper.sort_by{|i| i.date}.reverse[0].recipe
    end

    def safe_recipes
      Recipe.all.select do |i| 
        i.ingredients.any? do |ingredient|
            self.allergens_helper.include?(ingredient)
            end
        end
     #Get all recipe ingredients
     #Compare recipe ingredients to allergen info
     #reject recipes that contain allergen ingredients

    end

    
end