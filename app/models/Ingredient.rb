class Ingredient

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        array = Allergy.all.map{|allergy| allergy.ingredient}
        array.max_by{|i| array.count(i)}

    end
    
end
