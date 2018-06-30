require_relative "./concerns/concerns.rb"

class Genre
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
  def add_song(song)
    self.songs << song unless @songs.include?(song)
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|song| song.artist}.uniq
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
    new(name).tap {|genre| genre.save}
  end

  def self.destroy_all
    all.clear
  end

  def add_song(song)
    songs << song unless songs.include?(song)
  end

  def artists
    songs.collect {|song| song.artist}.uniq
  end

=======
    self.new(name).tap {|genre| genre.save}
  end

  def self.destroy_all
    @@all.clear
  end
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
end
