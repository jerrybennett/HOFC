class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :cards
end
