class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.string :variety
      t.decimal :amount
      t.string :unit
      t.belongs_to :beer, null: false, foreign_key: true
    end
  end
end
