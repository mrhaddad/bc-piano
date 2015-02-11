class Performance < ActiveRecord::Base
  belongs_to :user
  belongs_to :masterclass

  validates :user, presence: true
  validates :masterclass, presence: true
  validates :composer, presence: true
  validates :title, presence: true
end
