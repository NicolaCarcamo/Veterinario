class Pet < ApplicationRecord
  belongs_to :client
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
      (pet_histories.sum(:height) / pet_histories.count).round(2)
    end
  end

  def max_weight
    pet_histories.pluck(:weight).max
  end

  def max_height
    pet_histories.pluck(:height).max
  end

end
