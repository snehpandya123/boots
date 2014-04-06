class Lcity < ActiveRecord::Base
	has_many :lservices
attr_accessible  :lname , :lcode , :lexperience , :lrating , :llocation
end
