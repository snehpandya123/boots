class Vendor < ActiveRecord::Base
	attr_accessible :name, :address, :email, :location, :ph_no, :mobile_no, :asset_name
end
