class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  has_many :related_products
  has_many :related, through: :related_products

  has_many :galleries

  belongs_to :category
  belongs_to :brand

  enum hit: {hit: 1, not_hit: 0}

  enum status: {active: 1, not_active: 0}
  #like this:
  scope :active, lambda { where(status: 1) }
end
