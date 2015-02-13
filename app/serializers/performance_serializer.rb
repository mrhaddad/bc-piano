class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :performer, :composer, :title, :editable, :deleteable

  def performer
    object.user.name
  end

  def editable
    object.user_id == scope.try(:id)
  end

  def deleteable
    object.user_id == scope.try(:id)
  end
end
