class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :category, :description

  has_many :comments
end
