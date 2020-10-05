class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post1)
    @posts << post1
    post1.artist = self
  end 
  
  def add_post_by_title(name)
    post1 = Post.new(name)
    self.add_post(post1)
  end
  
  def self.post_count()
    Post.all.length
  end 
  
  
end