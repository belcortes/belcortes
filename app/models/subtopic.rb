class Subtopic < ActiveRecord::Base

  has_many :questions, :dependent => :destroy
  belongs_to :topic

  validates :name, presence: true

end
