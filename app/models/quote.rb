class Quote < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments

    validates :description, presence: true
    validates :description,length:{ minimum:20 }
end
