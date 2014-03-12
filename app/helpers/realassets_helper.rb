module RealassetsHelper

	def location_for_select
  			Location.all.collect { |m| [m.location, m.location] }
	end
end
