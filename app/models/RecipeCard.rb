class RecipeCard

    attr_reader :date, :rating, :recipe, :user
    @@all = []

    def initialize(date, rating, recipe, user)
        @date = date
        @rating = rating
        @recipe = recipe
        @user = user
        @@all << all
    end

    def self.all 
        @@all
    end

    

end