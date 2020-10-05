class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(name)
    @title = title
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def author=(author) 
    @author = author 
    self.author.posts << self
  end 
  
  def author_name
    if @author == nil 
      nil 
    else
      self.author.name
    end
  end 
  
end