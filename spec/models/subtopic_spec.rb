require 'spec_helper'

describe Subtopic do
  subject(:subtopic) {Subtopic.new(name: 'equations')}

  describe 'validation' do
    it { should validate_presence_of(:name)}
    # it { should validate_presence_of(:color)}
  end

  describe 'association' do
    it { should belong_to(:topic) }
  end
end