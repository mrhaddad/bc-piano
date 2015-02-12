class Masterclass < ActiveRecord::Base
  has_many :performances, dependent: :destroy

  validates :date, presence: true, uniqueness: true
end
