class Subject < ActiveRecord::Base

  has_many :topics, :dependent => :destroy

  validates :name, presence: true

end
