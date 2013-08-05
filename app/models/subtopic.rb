class Subtopic < ActiveRecord::Base
  has_many :questions, inverse_of: :subtopic, :dependent => :destroy
  has_one :topic
  has_and_belongs_to_many :users

  validates :name, presence: true

end
