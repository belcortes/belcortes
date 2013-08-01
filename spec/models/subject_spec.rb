require 'spec_helper'

describe Subject do
  subject(:subject) {Topic.new(name: 'calculus')}

  describe 'validation' do
    it { should validate_presence_of(:name)}
    # it { should validate_presence_of(:color)}
  end

  # describe 'association' do
  #   it { should belong_to(:subject) }
  # end
end