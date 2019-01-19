class Question 
    attr_accessor :title, :category, :content

    def initialize(title = nil, category = "Ruby", content = "what is a class?")
        @title = title
        @category = category
        @content = content 
    end
end