class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :quote

    def self.avg_star_rating
        self.average(:star_rating).round(2).to_f
    end 
end
