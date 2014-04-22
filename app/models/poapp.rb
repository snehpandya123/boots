class Poapp < ActiveRecord::Base

     belongs_to :po
     belongs_to :hr
	

	attr_accessible  :invoice , :from, :date, :action , :po_id , :po_attributes

	validates :invoice , :from, :date, :action , presence: true

	validates_uniqueness_of :invoice

end
