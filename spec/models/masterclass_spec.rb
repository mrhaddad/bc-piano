require 'rails_helper'

RSpec.describe Masterclass, :type => :model do
  describe 'associations' do
    it { should have_many(:performances).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
    it { should validate_uniqueness_of :date }
  end
end
