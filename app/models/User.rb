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

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, recipe, self)
    end

    def allergens_helper
        Allergy.all.select{|i| i.user == self}
    end

    def declare_allergies
        
    end



    
end