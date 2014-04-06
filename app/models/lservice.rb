class Lservice < ActiveRecord::Base
	belongs_to :lcity
	attr_accessible  :lcode , :lscode , :lcharg , :lname
end
