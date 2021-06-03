class Dish < ApplicationRecord
  before_save :sum_ingredient

  has_one_attached :avatar
  has_and_belongs_to_many :ingredients

  private

  def sum_ingredient
    sum = ingredients.map(&:price).sum
    self.total = sum + (sum * 0.2)
  end
end
