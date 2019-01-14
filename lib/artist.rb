class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save 
    @@all << self
  end 
  
  def self.find_or_create_by_name(name)
    if @@all.any? { |value| value.name == name }
      @@all.each do |value|
        if value.name == name 
          return value 
        end 
      end 
    end 
<<<<<<< HEAD
    Artist.new(name)
=======
    return Artist.new(name)
>>>>>>> 3e3bf184e7293343fd2865249b8e9cdcb5468add
  end
  
  def self.all
    @@all
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name 
    end
  end
  
end
  