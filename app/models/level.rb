class Level < ApplicationRecord
    has_many :masterpieces
    has_many :comments
end
