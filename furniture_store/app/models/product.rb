class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }
  validates :condition, presence: true
  validates :on_clearance, inclusion: { in: [true, false] }
  validates :quantity, numericality: { only_integer: true }

  def display_price
    if on_clearance
      self.price *= 0.9 if condition.downcase == 'good'
      self.price *= 0.8 if condition.downcase == 'average'
    end
    self.price
  end
end
