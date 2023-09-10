class Plactice < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :weight, length:  { maximum: 3 }, numericality: { only_integer: true }
  validates :rep, length:  { maximum: 4 }, numericality: { only_integer: true }

end