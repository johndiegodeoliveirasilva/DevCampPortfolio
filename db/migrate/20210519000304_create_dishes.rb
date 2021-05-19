class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.decimal :total
      t.decimal :value_calorie
    end
  end
end
