class Actor < ActiveRecord::Base
	has_many :galleries

	has_many :movie_actors
	has_many :movies, :through => :movie_actors

	has_many :favorite_actors
	has_many :users, :through => :favorite_actors

	has_many :actor_images
	has_many :images, :through => :actor_images
end
