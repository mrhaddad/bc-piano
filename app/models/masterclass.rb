class Masterclass < ActiveRecord::Base
  has_many :performances, -> { order('users.name, composer, title').joins(:user) }, dependent: :destroy

  validates :date, presence: true, uniqueness: true

  def shuffle_performances!
    performances.shuffle.each_with_index { |p, i| p.set_list_position(i) }
  end
end
