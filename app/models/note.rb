class Note < ActiveRecord::Base
  belongs_to :beer_geek
  belongs_to :beer
end
