class Song

  @@count = 0 
<<<<<<< HEAD
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist
    @genre = genre
    @@genres << genre 
    @@artists << artist 
  end 
  
  def self.count
    @@count   
  end
  
 def self.genres 
    @@genres 
  end
  
  def self.artists 
    @@artists.uniq 
  end 
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each_with_object(Hash.new(0)){|value, key| key[value] += 1}
end 
  
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)){|value, key| key[value] += 1}
  end 
  
=======
  @@genre = []
  @@artist = []
  
  attr_accessor :name, :artist, :genres 
  
  def initialize(genre, artist)
    @@count += 1 
    @@genre = genre
    @@artist = artist 
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genre.push(genre) unless @@genre.includes(genre)
  end 
    
>>>>>>> cd4275a9c0f1c57b28d3d6315cf827b9e7030e3a
end 