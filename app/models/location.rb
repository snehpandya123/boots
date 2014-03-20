class Location < ActiveRecord::Base
	attr_accessible :location
	validates :location, presence: true
end
