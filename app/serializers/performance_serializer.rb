class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :performer, :composer, :title

  def performer
    object.user.name
  end
end
