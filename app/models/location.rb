class Location < ActiveRecord::Base
	attr_accessible :location
	validates :location, presence: true
	string_regex = /\A[a-z]+\z/i

	validates :location, 
			 
			  :format => { :with => string_regex ,:message=> "must be string"}
	
	validates_uniqueness_of :location 

end
