class Invard < ActiveRecord::Base
	belongs_to :ssend
	attr_accessible :invoice , :remark, :ssend_id, :ssend_attributes , :po_attributes
	validates_uniqueness_of :invoice

end
