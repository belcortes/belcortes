class Subject < ActiveRecord::Base

  has_many :topics, :dependent => :destroy
  has_many :users

  validates :name, presence: true

end
