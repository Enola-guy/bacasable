class AddColumnFestivalFromBeer < ActiveRecord::Migration
  def change
    add_reference :beers, :festival, index: true, foreign_key: true
  end
end
