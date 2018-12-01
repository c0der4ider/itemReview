class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  has_and_belongs_to_many :entities
end
