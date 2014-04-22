class Send < ActiveRecord::Base

	belongs_to :po
	attr_accessible :po_id , :po_attributes

	validates_uniqueness_of :po_id
end
