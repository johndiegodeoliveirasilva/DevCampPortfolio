class Ingredient < ApplicationRecord
  has_one_attached :avatar
  has_and_belongs_to_many :dishes
end