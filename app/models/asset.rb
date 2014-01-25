class Asset < ActiveRecord::Base
	attr_accessible :name , :tp , :cost , :location 
end
