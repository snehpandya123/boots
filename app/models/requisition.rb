class Requisition < ActiveRecord::Base

	attr_accessible :name , :unit , :quantity ,:from ,:particular 

	validates :name , :unit , :quantity ,:from ,:particular , presence: true
end
