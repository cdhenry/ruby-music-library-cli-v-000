class MusicLibraryController
<<<<<<< HEAD
  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
=======
  attr_accessor :music

  def initialize(path = "./db/mp3s")
    @music = MusicImporter.new(path)
    @music.import
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
  end

  def call
    input = ""
<<<<<<< HEAD

    while input != "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"

      input = gets.strip

      case input
      when "list songs"
        list_songs
      when "list artists"
        list_artists
      when "list genres"
        list_genres
      when "list artist"
        list_songs_by_artist
      when "list genre"
        list_songs_by_genre
      when "play song"
        play_song
      end
=======
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    while input != "exit"
      input = gets
    #  if input = "list songs"
    #    list_songs
    #  elsif input = "list artists"
    #    list_artists
    #  elsif input = "list genres"
    #    list_genres
    #  elsif input = "list artist"
    #    list_songs_by_artist
    #  elsif input = "list genre"
    #    list_songs_by_genre
    #  elsif input = "play song"
    #    play_song
    #  else
    #  end
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
    end
  end

  def list_songs
<<<<<<< HEAD
    Song.all.sort{|a,b| a.name <=> b.name}.each.with_index(1) do |s, i|
      puts "#{i}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
    end
  end

  def list_artists
    Artist.all.sort{|a,b| a.name <=> b.name}.each.with_index(1) do |a, i|
      puts "#{i}. #{a.name}"
    end
  end

  def list_genres
    Genre.all.sort{|a,b| a.name <=> b.name}.each.with_index(1) do |g, i|
      puts "#{i}. #{g.name}"
    end
=======
    a_index = 0
    b_index = 0
    songs = music.files.sort do |a,b|
      a_index = a.index(" - ")
      b_index = b.index(" - ")
      a[a_index..-1] <=> b[b_index..-1]
    end
    songs.each_with_index {|song, index| puts "#{index+1}. " + song.chomp(".mp3")}
  end

  def list_artists
    artists = Artist.all.collect {|artist| artist.name}.sort
    artists.each_with_index {|name, index| puts "#{index+1}. " + name}
  end

  def list_genres
    genres = Genre.all.collect {|genre| genre.name}.sort
    genres.each_with_index {|genre, index| puts "#{index+1}. " + genre}
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
  end

  def list_songs_by_artist
    puts "Please enter the name of an artist:"
<<<<<<< HEAD
    input = gets.strip

    if artist = Artist.find_by_name(input)
      artist.songs.sort{|a,b| a.name <=> b.name}.each.with_index(1) do |s, i|
        puts "#{i}. #{s.name} - #{s.genre.name}"
      end
=======
    input = gets
    if Artist.find_by_name(input)
        artist = Artist.find_by_name(input)
        sorted_songs = artist.songs.sort{|a,b| a.name <=> b.name}
        sorted_songs.each_with_index {|song, index| puts "#{index+1}. #{song.name} - #{song.genre.name}"}
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
    end
  end

  def list_songs_by_genre
    puts "Please enter the name of a genre:"
<<<<<<< HEAD
    input = gets.strip

    if genre = Genre.find_by_name(input)
      genre.songs.sort{|a,b| a.name <=> b.name}.each.with_index(1) do |s, i|
        puts "#{i}. #{s.artist.name} - #{s.name}"
      end
=======
    input = gets
    if Genre.find_by_name(input)
        genre = Genre.find_by_name(input)
        sorted_songs = genre.songs.sort{|a,b| a.name <=> b.name}
        sorted_songs.each_with_index {|song, index| puts "#{index+1}. #{song.artist.name} - #{song.name}"}
>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
    end
  end

  def play_song
<<<<<<< HEAD
    puts "Which song number would you like to play?"

    input = gets.strip.to_i
    if (1..Song.all.length).include?(input)
      song = Song.all.sort{|a,b| a.name <=> b.name}[input - 1]
    end

    puts "Playing #{song.name} by #{song.artist.name}" if song
=======

>>>>>>> 9dc213126863d161a7ebc5c8ba97c39270fecba9
  end
end
