require 'rails_helper'

RSpec.describe Performance, :type => :model do
  describe 'associations' do
    it { should belong_to :user }
    it { should belong_to :masterclass }
  end

  describe 'validations' do
    it { should validate_presence_of :user }
    it { should validate_presence_of :masterclass }
    it { should validate_presence_of :composer }
    it { should validate_presence_of :title }
  end
end
