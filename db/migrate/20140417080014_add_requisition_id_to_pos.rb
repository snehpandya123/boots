class AddRequisitionIdToPos < ActiveRecord::Migration
  def change
    add_reference :pos, :requisition, index: true
  end
end
