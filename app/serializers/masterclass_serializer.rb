class MasterclassSerializer < ActiveModel::Serializer
  attributes :id, :date, :current, :registerable

  has_many :performances

  def current
    object == Masterclass.where('date >= ?', Date.today.beginning_of_day).order(:date).first
  end

  def registerable
    scope.present? && object.date >= Date.today.beginning_of_day
  end
end
