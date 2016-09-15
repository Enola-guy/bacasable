class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.text :description
      t.integer :note
      t.string :pays
      t.string :lineup

      t.timestamps null: false
    end
  end
end
