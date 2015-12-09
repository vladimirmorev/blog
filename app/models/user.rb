class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments
  has_many :authorizations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:twitter, :facebook, :linkedin, :google_oauth2, :vkontakte]
 

  SOCIALS = {
    facebook: 'Facebook',
    twitter: 'Twitter',
    linkedin: 'Linkedin',
    google_oauth2: 'Google+',
    vkontakte: 'Vkontakte'
  }  

  def self.from_omniauth(auth, current_user)
    authorization = Authorization.where(:provider => auth.provider, :uid => auth.uid.to_s, 
                                        :token => auth.credentials.token, 
                                        :secret => auth.credentials.secret).first_or_initialize
    #authorization.profile_page = auth.info.urls.first.last unless authorization.persisted?
    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth['info']['email']).first : current_user
      if user.blank?
        user = User.new
        #user.skip_confirmation!
        user.password = Devise.friendly_token[0, 20]
        user.fetch_details(auth)
        user.save
      end
      authorization.user = user
      authorization.save
    end
    authorization.user
  end

  def fetch_details(auth)
    self.name = auth.info.name
    self.email = auth.info.email
    #self.photo = URI.parse(auth.info.image)
  end
end
