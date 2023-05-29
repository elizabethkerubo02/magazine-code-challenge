class Magazine
    attr_accessor :name, :category
    @@ll = []

    def initialize(name,category)
        @name = name
        @category = category

        @@ll << self
    end
    def self.all
        @@all
    end

end