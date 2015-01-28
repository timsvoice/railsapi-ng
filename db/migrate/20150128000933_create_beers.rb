class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.integer :rating
      t.text :location

      t.timestamps
    end
  end
end
