class Topic < ActiveRecord::Base

  has_many :subtopics, :dependent => :destroy
  belongs_to :subject

  validates :name, presence: true

end
