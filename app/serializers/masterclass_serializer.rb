class MasterclassSerializer < ActiveModel::Serializer
  attributes :id, :date

  has_many :performances
end
