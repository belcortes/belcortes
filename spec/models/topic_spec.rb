require 'spec_helper'

describe Topic do
  subject(:topic) {Topic.new(name: 'algebra')}

  describe 'validation' do
    it { should validate_presence_of(:name)}
    # it { should validate_presence_of(:color)}
  end

  describe 'association' do
    it { should belong_to(:subject) }
  end
end