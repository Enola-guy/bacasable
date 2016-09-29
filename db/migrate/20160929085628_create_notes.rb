class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :star
      t.references :beer_geek, index: true, foreign_key: true
      t.references :beer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
