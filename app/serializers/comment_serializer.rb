class CommentSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :comment, :quote_id, :user_id
end
