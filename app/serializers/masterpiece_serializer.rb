class MasterpieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :image, :value
end
