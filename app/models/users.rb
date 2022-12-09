class User < ApplicationRecord
     has_many :comments
     has_many :quotes

    has_secure_password

     validates :name, presence: true
     validates :name, uniqueness: true
end
