class Character < ActiveRecord::Base
    has_many :reviews

    validates :character, uniqueness: true
end