class AddColumnBrewerieFromBeer < ActiveRecord::Migration
  def change
    add_reference :beers, :brewerie, index: true, foreign_key: true
  end
end
