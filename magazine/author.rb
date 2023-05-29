class author
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def articles
        Article.all.filter{|article| article.author==@name}
    end
    def magazines
        article.map{|article| articles.magazine}.uniq 
    end

    def add_articles(magazine,title)
        Article.new(self,magazine,title)
    end
    def topic_areas
        magazine.map{|magazine| magazine.category}.uniq
    end


end