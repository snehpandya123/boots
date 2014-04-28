class Allot < ActiveRecord::Base
	belongs_to :stock

	attr_accessible :stock_id , :stock_attributes
	validates_uniqueness_of :stock_id
end
