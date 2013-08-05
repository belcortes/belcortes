class Topic < ActiveRecord::Base

  has_many :subtopics, :dependent => :destroy
  has_one :subject
  has_and_belongs_to_many :users
  has_many :questions, through: :subtopics
  validates :name, presence: true

end
