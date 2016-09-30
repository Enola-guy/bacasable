class BeerGeek < ActiveRecord::Base
	has_many :notes 
	has_many :beers, :through => :notes
			#or through :    :notes

end
