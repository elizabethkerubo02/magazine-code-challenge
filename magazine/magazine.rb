class Magazine
    attr_accessor :name, :category
    @@ll = []

    def initialize(name,category)
        @name = name
        @category = category

        @@ll << self
    end

end