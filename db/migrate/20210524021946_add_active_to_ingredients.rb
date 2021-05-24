class AddActiveToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :active, :boolean, default: true
  end
end
