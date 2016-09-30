class Note < ActiveRecord::Base
  belongs_to :beer_geek
  belongs_to :beer
  validates:beer_geek,presence:true
  validates:beer,presence:true
end
