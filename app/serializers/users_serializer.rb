class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name :password_digest

   has_many :comments
end
