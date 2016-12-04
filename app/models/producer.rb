class Producer < ActiveRecord::Base
	has_many :movie_producers
	has_many :movies, :through => :movie_producers
end
