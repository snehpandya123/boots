class Realasset < ActiveRecord::Base
	attr_accessible :name , :typ , :cost , :locat
	validates :cost,:name,:typ ,:locat, presence: true

	string_regex = /[a-z]+\z/i

	validates :cost, numericality: { only_integer: true ,  :message => "should be Number only"},
    		  :length => {:maximum => 10  }
    		
    validates :name , :format => { :with => string_regex , :message => "should not contain special character" }

end
