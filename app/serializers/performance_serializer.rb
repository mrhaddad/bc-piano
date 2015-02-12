class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :performer, :composer, :title, :deleteable

  def performer
    object.user.name
  end

  def deleteable
    object.user_id == scope.try(:id)
  end
end
