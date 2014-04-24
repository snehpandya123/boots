class Ssend < ActiveRecord::Base

	belongs_to :po
	has_many :stocks
	attr_accessible :po_id , :po_attributes

	validates_uniqueness_of :po_id
end
