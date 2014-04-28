class Stock < ActiveRecord::Base
	belongs_to :ssend
	has_many :allots
	attr_accessible :name , :sendto , :requ , :invoice ,:ssend_id, :ssend_attributes

	validates_uniqueness_of :invoice
end
