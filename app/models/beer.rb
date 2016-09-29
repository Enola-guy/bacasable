class Beer < ActiveRecord::Base
belongs_to :festival
has_many :beer_geeks, through : :notes
end
