class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
 	
 	has_many :comments
  has_many :reviews 
  has_many :rates

	has_many :favorite_actors
	has_many :actors, :through => :favorite_actors
end
