class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 	has_many :comments
  has_many :reviews 
  has_many :rates
	has_many :favorite_actors
	has_many :actors, :through => :favorite_actors
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :omniauthable, :omniauth_providers => [:facebook]
	
	has_many :favorite_movies
	has_many :movies, :through => :favorite_movies

	def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.provider = auth.provider
      user.uid = auth.uid
      user.skip_confirmation!
      user.save!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def admin?
    self.role == "Admin"
  end

  def moderator?
    self.role == "Moderator"
  end
end
