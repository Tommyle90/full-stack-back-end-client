class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :mealtype
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
