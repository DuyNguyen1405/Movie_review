class MovieProducer < ActiveRecord::Base
	belongs_to :movie
	belongs_to :producer
end
