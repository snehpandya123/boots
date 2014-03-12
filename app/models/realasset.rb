class Realasset < ActiveRecord::Base
	attr_accessible :name , :typ , :cost , :locat
	validates :cost,:name,:typ ,:locat, presence: true
end
