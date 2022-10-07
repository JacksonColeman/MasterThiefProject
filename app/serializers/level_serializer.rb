class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  has_many :masterpieces
end
