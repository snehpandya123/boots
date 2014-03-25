module PosHelper

	 def rand_value 
	   (0...4).map { ('a'..'z').to_a[rand(26)] }.join.to_s + rand(1..2000).to_s
	end
end
