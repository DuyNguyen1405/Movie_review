class MovieGenre < ActiveRecord::Base
	belongs_to :genre, class_name: "Genre"
	belongs_to :movie, class_name: "Movie" 
end
