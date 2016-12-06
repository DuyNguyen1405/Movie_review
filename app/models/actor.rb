class Actor < ActiveRecord::Base


	has_many :movie_actors
	has_many :movies, :through => :movie_actors

	has_many :favorite_actors
	has_many :users, :through => :favorite_actors

	has_many :images
end
