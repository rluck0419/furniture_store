class Product
  validates :name, presence: true
  validates :price, only_integer: true
  validates :condition, presence: true
  validates :on_clearance, inclusion: { in: [true, false] }
  validates :quantity, only_integer: true
end
