class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy

  validates :name, presence: true
  validates :race, presence: true
  validates :birthdate, presence: true

  def to_s
    name
  end

  def history_count
    pet_histories.count
  end

  def avg_weight
    if pet_histories.count > 0
      (pet_histories.sum(:weight) / pet_histories.count).round(2)
    end
  end

  def avg_height
    if pet_histories.count > 0
      (pet_histories.sum(:heigth).to_f / pet_histories.count).round(2)
    end
  end

  def max_weight
    pet_histories.pluck(:weight).max
  end

  def max_height
    pet_histories.pluck(:heigth).max
  end

end
