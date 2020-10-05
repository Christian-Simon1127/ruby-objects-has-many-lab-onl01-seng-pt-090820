class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def artist=(artist) 
    @artist = artist 
    self.artist.songs << self
  end 
  
  def artist_name
    if @artist == nil 
      nil 
    else
      self.artist.name
    end
  end 
  
end