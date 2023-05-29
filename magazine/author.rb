class Author
    attr_reader :name
  
    def initialize(name)
      # Initialize method is called when a new instance of Author is created
      # It takes name as an argument and assigns it to the instance variable @name
      # name - the name of the author
      @name = name
    end
  
    def articles
      # Retrieve all articles written by the current author
      # Filters the Article.all array and selects only the articles whose author's name matches the current author's name
      Article.all.filter { |article| article.author == @name }
    end
  
    def magazines
      # Retrieve all magazines the author has written for
      # Maps over the articles and returns an array of magazine names
      # Then applies the uniq method to remove any duplicate magazine names
      articles.map { |article| article.magazine }.uniq
    end
  
    def add_articles(magazine, title)
      # Create a new article associated with the current author
      # Calls the Article.new constructor and passes self (current author), magazine, and title as arguments
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      # Retrieve the topic areas the author has written about
      # Maps over the magazines and returns an array of category names
      # Then applies the uniq method to remove any duplicate category names
      magazines.map { |magazine| magazine.category }.uniq
    end
  end
  