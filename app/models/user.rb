class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :performances, dependent: :destroy

  validates :name, presence: true

  strip_attributes only: :name

  def initials
    name.split(' ').map(&:first).join(' ')
  end
end
