class CreateJoinTableDishIngredient < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dishes, :ingredients, id: false do |t|
      t.index :dish_id
      t.index :ingredient_id
    end
  end
end
