class Gallery < ActiveRecord::Base
	has_many :images
	has_many :musics
	belongs_to :movie
	belongs_to :actor
end
