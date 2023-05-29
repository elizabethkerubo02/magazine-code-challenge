class Magazine
    attr_accessor :name, :category
    @@all = []

    def initialize(name,category)
        @name = name
        @category = category

        @@ll << self
    end
    def self.all
        @@all
    end

    def magazine_articles
        Article.all.filter{|article| article.magazine.name==@name}
    end

    def magazine_authors
        magazine_articles.map{|article| article.author}
    end
    def contributors
        magazine_authors.uniq
    end

end