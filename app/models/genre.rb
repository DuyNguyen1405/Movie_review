class Genre < ActiveRecord::Base
	def index
		@genres = Genre.all
	end
end
