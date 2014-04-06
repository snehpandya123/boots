class Search < ActiveRecord::Base
	attr_accessible :city , :service

	def self.search(search)
    if search
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
 end
end
