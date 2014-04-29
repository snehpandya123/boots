class GkprController < ApplicationController

def ghome
	@po = Po.joins(:ssends).where('ssends.po_id IS NOT NULL')
	@invard = Invard.new
end

end
