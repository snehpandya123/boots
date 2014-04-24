class Stock < ActiveRecord::Base
	belongs_to :ssend
	has_many :allots
	attr_accessible :name , :sendto , :requ , :invoice ,:ssend_id, :ssend_attributes
end
