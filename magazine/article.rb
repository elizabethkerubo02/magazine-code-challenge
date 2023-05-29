class Article
    attr_reader :magazine, :title
    @@all=[] # Class variable to store all instances of Article


    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end


    # Returns the name of the author associated with the article
    def author
        @author.name
    end

      # Returns the @@all array, which contains all instances of the Article class
    def self.all
        @@all
    end

end