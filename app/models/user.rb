class User < ApplicationRecord
    has_many :comments
    has_many :quotes, through: :comments

    # validates :name, presence: true
    # validates :name, uniqueness: true
end
