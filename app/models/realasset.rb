class Realasset < ActiveRecord::Base

	belongs_to :emp
	belongs_to :hr
	belongs_to :authorize
	attr_accessible :name , :typ , :cost , :locat , :emp_id , :hr_id , :authorize_id
	

	
		validates :name , :typ , :cost , :locat  , presence: true	
			

	string_regex = /\A[a-z]+\z/i

	validates :cost, numericality: { only_integer: true ,  :message => "should be Number only"},
    		  :length => {:maximum => 10  }
    		
    validates :name , :format => { :with => string_regex , :message => "should not contain special character" }

    validates_uniqueness_of :name

end
