class PetHistory < ApplicationRecord
    belongs_to :pet

    validates :weight, presence: true
    validates :height, presence: true
    validates :description, presence: true
end
