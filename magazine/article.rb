class Article
    attr_reader :magazine, :title
    @@all = [] # Class variable to store all instances of Article
  
    def initialize(author, magazine, title)
      # Initialize method is called when a new instance of Article is created
      # It takes author, magazine, and title as arguments and assigns them to instance variables
      # author - the author associated with the article
      # magazine - the magazine the article belongs to
      # title - the title of the article
      # @@all - the class variable that stores all instances of Article
      # self - refers to the current instance of the Article class
      # Adds the current instance to the @@all array
      @@all << self
    end
  
    # Returns the name of the author associated with the article
    def author
      author.name
    end
  
    # Returns the @@all array, which contains all instances of the Article class
    def self.all
      @@all
    end
  end
  