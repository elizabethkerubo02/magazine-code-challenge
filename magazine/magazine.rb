class Magazine
    attr_accessor :name, :category
    @@all = []  # Class variable to store all instances of Magazine
  
    def initialize(name, category)
      # Initialize method is called when a new instance of Magazine is created
      # It takes name and category as arguments and assigns them to instance variables
      # name - the name of the magazine
      # category - the category of the magazine
      # @@all - the class variable that stores all instances of Magazine
      # self - refers to the current instance of the Magazine class
      # Adds the current instance to the @@all array
      @@all << self
    end
  
    def self.all
      # Returns the @@all array, which contains all instances of the Magazine class
      @@all
    end
  
    def magazine_articles
      # Retrieve all articles associated with the current magazine instance
      # Filters the Article.all array and selects only the articles whose magazine name matches the current magazine's name
      Article.all.filter { |article| article.magazine.name == @name }
    end
  
    def magazine_authors
      # Extract authors from the articles associated with the current magazine instance
      # Maps over the magazine_articles and returns an array of authors
      magazine_articles.map { |article| article.author }
    end
  
    def contributors
      # Return a list of unique authors who have contributed to the magazine
      # Calls magazine_authors and then applies the uniq method to remove any duplicate authors from the array
      magazine_authors.uniq
    end
  end
  