class Vendor < ActiveRecord::Base
	attr_accessible :name, :address, :email, :location, :ph_no, :mobile_no, :asset_name

	validates :location,:asset_name, presence: true
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	string_regex = /[a-z]+\z/i
	validates :name, :presence => true,:length => { :maximum => 50 },:format => { :with => string_regex }
	validates :email, :presence => true,
			  :format => { :with => email_regex },
			  :uniqueness => { :case_sensitive => false }
    validates :address, :presence => true,
			  :length => { :within => 10..60 }
    validates :ph_no, numericality: { only_integer: true },
    		  :length => {:maximum => 10}

    validates :mobile_no, numericality: { only_integer: true },
    		  :length => {:maximum => 12}
    		  
end
