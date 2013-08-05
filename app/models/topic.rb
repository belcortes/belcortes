class Topic < ActiveRecord::Base

  has_many :subtopics, :dependent => :destroy
  has_one :subject

  validates :name, presence: true

end
