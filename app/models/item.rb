class Item < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :entity

  has_and_belongs_to_many :entities
end
