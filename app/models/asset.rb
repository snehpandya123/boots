class Asset < ActiveRecord::Base
	attr_accessible :name , :tp , :cost , :location 
validates :name , :presence => :true
validates :tp , :presence => :true
validates :location , :presence => :true
validates :cost, numericality: { only_integer: true },
    	   :length => {:maximum => 10}
end
