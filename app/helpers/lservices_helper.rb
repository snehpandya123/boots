module LservicesHelper

def code_for_select
  			Lcity.all.collect { |m| [m.lname, m.lcode] }
	end

	def city_for_select
  			Lcity.all.collect { |m| [m.llocation, m.llocation] }
	end

	def service_for_select
  			Lservice.all.collect { |m| [m.lname, m.lname] }
	end


end

