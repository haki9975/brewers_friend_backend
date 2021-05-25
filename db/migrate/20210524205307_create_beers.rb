class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.decimal :abv
      t.decimal :ibu
      t.decimal :volume
      t.integer :boil_volume
      t.string :mash_instruct
      t.string :fermentation_instruct
      t.text :food_pairing
      t.text :tips     
    end
  end
end
