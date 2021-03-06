class Requisition < ActiveRecord::Base
	belongs_to :emp
	has_many :pos

	attr_accessible :name , :unit , :quantity ,:from ,:particular ,:total , :cost , :emp_id 

	validates :name , :unit , :quantity ,:from ,:particular ,:total , :cost , presence: true
 	
	 validates :particular, :presence => true,
			  :length => { :within => 1..255 }

	  validates :quantity, numericality: { only_integer: true },
    		  :length => {:maximum => 4}

      validates :quantity, numericality: { only_integer: true },
    		  :length => {:maximum => 4}

end
