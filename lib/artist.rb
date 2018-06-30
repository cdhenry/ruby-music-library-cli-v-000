require_relative "./concerns/concerns.rb"

class Artist
  extend Concerns::Findable
<<<<<<< HEAD

  attr_accessor :name
  attr_reader :songs

  @@all = []
=======
  @@all = []
  attr_accessor :name
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9

  def initialize(name)
    @name = name
    @songs = []
  end

<<<<<<< HEAD
=======
  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}.uniq
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist != nil
  end

>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
<<<<<<< HEAD
    new(name).tap {|artist| artist.save}
  end

  def self.destroy_all
    all.clear
  end

  def genres
    songs.collect {|song| song.genre}.uniq
  end

  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
=======
    self.new(name).tap {|artist| artist.save}
  end

  def self.destroy_all
    @@all.clear
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
  end
end
