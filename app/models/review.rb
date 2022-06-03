class Review < ActiveRecord::Base
    belongs_to :character

    validates :text, presence: true
    validates :rating, presence: true
end