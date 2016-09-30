class CreateBeerGeeks < ActiveRecord::Migration
  def change
    create_table :beer_geeks do |t|
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
