class Quote < ApplicationRecord
    has_many :comments
    has_many :users

    validates :description, presence: true
    validates :description,length:{ minimum:20 }
end
