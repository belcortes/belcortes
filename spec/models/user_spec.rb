require 'spec_helper'

describe User do
  subject(:user) {User.new(name: 'isabel', email: 'belcortes@gmail.com', password: 'pass123', password_confirmation: 'pass123', admin: true)}

  describe 'validation' do
    # validation tests not accounting for integer in total_score or admin boolean
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password)}
    it { should validate_presence_of(:password_confirmation)}
    # it { should validate_presence_of(:total_score)}
  end

  # describe 'assocation' do
  #   it { should have_many(:identities)}
  #   it { should have_many(:cupcakes)}
  # end
end