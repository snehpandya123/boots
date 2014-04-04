class Requisition < ActiveRecord::Base
	belongs_to :emp

	attr_accessible :name , :unit , :quantity ,:from ,:particular ,:total , :cost

	validates :name , :unit , :quantity ,:from ,:particular ,:total , :cost , presence: true
 	
	 validates :particular, :presence => true,
			  :length => { :within => 6..60 }

	  validates :quantity, numericality: { only_integer: true },
    		  :length => {:maximum => 4}

      validates :quantity, numericality: { only_integer: true },
    		  :length => {:maximum => 4}

end
