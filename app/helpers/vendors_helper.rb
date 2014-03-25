module VendorsHelper

	def vendor_for_select
  			Vendor.all.collect { |m| [m.name, m.email] }
	end
	def vendoradd_for_select
		Vendor.all.collect { |m| [m.name, m.address]}
	end
end
