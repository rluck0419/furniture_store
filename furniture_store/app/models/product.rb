class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }
  validates :condition, presence: true
  validates :on_clearance, inclusion: { in: [true, false] }
  validates :quantity, numericality: { only_integer: true }
end
