class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.float :abv
      t.int :ibu
      t.int :volume
      t.text :food_pairing
      t.text :tips

      t.timestamps
    end
  end
end
