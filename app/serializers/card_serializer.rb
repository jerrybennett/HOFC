class CardSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :topic
end
