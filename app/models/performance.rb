class Performance < ActiveRecord::Base
  belongs_to :user
  belongs_to :masterclass

  validates :user, presence: true
  validates :masterclass, presence: true
  validates :composer, presence: true
  validates :title, presence: true

  acts_as_list scope: :masterclass

  after_create :shuffle_performances!

  delegate :shuffle_performances!, to: :masterclass
end
