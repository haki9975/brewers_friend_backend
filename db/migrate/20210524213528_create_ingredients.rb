class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.decimal :amount
      t.string :unit
      t.belongs_to :beer, index: true, foreign_key: true
    end
  end
end
