class Client < ApplicationRecord
    has_many :pets, dependent: :destroy
    before_save :set_full_name

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :phone, presence: true
    validates :email, presence: true

    def set_full_name
        self.fullname = "#{ self.firstname } #{ self.lastname }"
    end

    def pets_count
        pets.count
    end
end
