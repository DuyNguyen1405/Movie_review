class Movie < ActiveRecord::Base
	has_many :videos
	has_many :gallery
	has_many :reviews
	has_many :rates
end
