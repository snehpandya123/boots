module RequisitionsHelper

	def realasset_for_select
  			Realasset.all.collect { |m| [m.name, m.name] }
	end
end
