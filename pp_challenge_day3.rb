require 'imdb'
require 'pry'

class File_reader

  def initialize(file)
    @file = file
  end

  def read_input
    file_contents = IO.read(@file)
  end

end

class Imdb_searcher
  def search(films)

    sherched_films = []

    films.each_line do |line|
      film_results = Imdb::Search.new(line).movies

      film_title = film_results[0].title
      film_rating = film_results[0].rating

      if film_rating != nil

        film_has = {:title => film_title, :rating => film_rating}

        sherched_films.push(film_has)

        puts sherched_films

      end

    end

  end

end

class Printer
	def initiliaze 
		
	end


myFilm = Imdb_searcher.new
puts myFilm.search("Ghostbusters")
puts myFilm.search("Titanic")
