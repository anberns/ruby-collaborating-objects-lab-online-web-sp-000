class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
    @artist = nil 
  end 
  
  def self.new_by_filename(file_name)
    temp = file_name.split('-')
<<<<<<< HEAD
    
    song_name = temp[1].strip
    artist_name = temp[0].strip
    
    new_song = Song.new(song_name)
    
    # attempting to interact with Artist object changes
    # Song object, breaking the tests 
    
    
    #artist = Artist.find_or_create_by_name(artist_name)
    #new_song.artist = artist
    
    
  end
  
  #def artist(artist_name)
   # Artist.find_or_create_by_name(artist_name)
  #end
  
  #def artist=(artist)
    #self.artist = artist
  #end
=======
    temp.each do |val|
      val.strip!
    end
    song_name = temp[1]
    artist_name = temp[0]
    
    new_song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist=(artist)
   
    #new_song.artist = artist.name
    #new_song.artist=(artist)
    
  end
  
  def artist=(artist)
    self.artist = artist
  end
>>>>>>> 3e3bf184e7293343fd2865249b8e9cdcb5468add
end
