class User < ActiveRecord::Base

  has_secure_password

  has_many :topic
  has_and_belongs_to_many :subtopics
  has_many :subjects
  # has_many :badges

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true, length: { in: 6..20 }
end
