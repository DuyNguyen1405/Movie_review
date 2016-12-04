class Image < ActiveRecord::Base
	belongs_to :actor
	has_many :actor_image
	belongs_to :movie
end
