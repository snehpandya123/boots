class Location < ActiveRecord::Base
	attr_accessible :location
	validates :location, presence: true
	string_regex = /[a-z]+\z/i

	validates :location, 
			  :format => { :with => string_regex }
			  

end
