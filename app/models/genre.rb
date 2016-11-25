class Genre < ActiveRecord::Base
	has_many :movie_genres
	has_many :movie, :through => :movie_genres
end
