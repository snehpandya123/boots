class Poapp < ActiveRecord::Base

	has_one :Po
	

	attr_accessible  :invoice , :from, :date, :action

	validates :invoice , :from, :date, :action , presence: true

	validates_uniqueness_of :invoice

end
