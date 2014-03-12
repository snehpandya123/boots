class Requisition < ActiveRecord::Base

	attr_accessible :name , :unit , :quantity ,:from ,:particular 
end
