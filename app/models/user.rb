class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:twitter, :facebook]
 

  def self.from_omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      if auth.info.email
	       user.email = auth.info.email
      end
      user.password = Devise.friendly_token[0,20]
	    user.name = auth.info.name   # assuming the user model has a name
	   # user.image = auth.info.image # assuming the user model has an image
	  end
  end
end
