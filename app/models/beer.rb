class Beer < ActiveRecord::Base
belongs_to :festival
has_many :notes
has_many :beer_geeks, through: :notes



  def moyenne
	moye=0
        if notes.nil?
		return
	else
		notes.each do |n|
	      		moye=moye+n.star
       	        end
			moye=moye/notes.count
	end
	#notes.map { |note| note.star }.sum / notes.count unless notes.empty?
  end


end
