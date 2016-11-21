class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :comments
  has_many :reviews 
  has_many :rates
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
