class Masterclass < ActiveRecord::Base
  has_many :performances, -> { order('position') }, dependent: :destroy

  validates :date, presence: true, uniqueness: true

  def shuffle_performances!
    performances.shuffle.each_with_index { |p, i| p.update_column(:position, i) }
  end
end
