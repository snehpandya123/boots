class Requisition < ActiveRecord::Base

	attr_accessible :name , :unit , :quantity ,:from ,:particular 

	validates :name , :unit , :quantity ,:from ,:particular , presence: true
 	
	 validates :particular, :presence => true,
			  :length => { :within => 6..60 }

	  validates :quantity, numericality: { only_integer: true },
    		  :length => {:maximum => 4}

end
