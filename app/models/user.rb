class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable


  has_and_belongs_to_many :topics
  has_and_belongs_to_many :subtopics
  has_and_belongs_to_many :subjects
  has_many :identities


  def self.find_for_twitter_oauth(auth)
    # identity = Identity.where(provider: auth.provider).first
    # if identity
    #   identity.update_attributes(name: auth.extra.raw_info.name,
    #                                      user_name: auth.extra.raw_info.screen_name,
    #                                      provider: auth.provider,
    #                                      uid: auth.uid,
    #                                      url: auth.info.urls.Twitter,
    #                                      image: auth.extra.raw_info.profile_image_url_https,
    #                                      token: auth.extra.access_token.token,
    #                                      secret: auth.extra.access_token.secret,
    #                                      user_id: user.id)
    # else
    #   current_user.identities << Identity.create(
    #     name: auth.extra.raw_info.name,
    #                                      user_name: auth.extra.raw_info.screen_name,
    #                                      provider: auth.provider,
    #                                      uid: auth.uid,
    #                                      url: auth.info.urls.Twitter,
    #                                      image: auth.extra.raw_info.profile_image_url_https,
    #                                      token: auth.extra.access_token.token,
    #                                      secret: auth.extra.access_token.secret,
    #                                      user_id: user.id)
    #   user.save!
    # end

    user = User.where(:email => auth.info.email)

    if user != []
      return user
    else
      # create a new user account for the user
      user = User.create(
        name: auth.info.name,
        email: auth.info.email,
        password: auth.info.uid,
        password_confirmation: auth.info.uid
      )
      return user
    end
  end
  # has_secure_password


  # has_many :badges

  # validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: { in: 6..20 }
  # validates :password_confirmation, presence: true, length: { in: 6..20 }
end
