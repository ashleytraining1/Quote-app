class Quote < ApplicationRecord
    has_many :categories
    has_many :comments
    has_many :users, through: :comments
end
