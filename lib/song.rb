
require 'pry'
class Song 
attr_accessor :name, :artist

@@all = []
def initialize(name) 
    @name = name 
    @@all << self
end 

def artist=(artist)
    @artist = artist 
end 

def artist 
    @artist 
end 

def artist_name=(name) 
   self.artist = Artist.find_or_create_by_name(name)
end 

def self.all 
    @@all 
end 

def self.new_by_filename(filename) 
    parsed_name = filename.split(" - ")[1]
       song = self.new(parsed_name)
      parsed_artist = filename.split(" - ")[0]
      artist = Artist.find_or_create_by_name(parsed_artist)
    song.artist = artist 
      song
  end 

end 