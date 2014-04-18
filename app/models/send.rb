class Send < ActiveRecord::Base

	belongs_to :po
	attr_accessible :po_id , :po_attributes
end
