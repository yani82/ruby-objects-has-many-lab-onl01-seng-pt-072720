class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = [] 
  end 
  
  def songs 
    Song.all.select do |song| 
      song.artist == self
    end 
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
  end
  
end
    
    