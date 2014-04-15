class Poapp < ActiveRecord::Base
	attr_accessible  :invoice , :from, :date, :action

	validates :invoice , :from, :date, :action , presence: true

	validates_uniqueness_of :invoice

end
