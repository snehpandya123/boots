class AddEmpIdToRequisitions < ActiveRecord::Migration
  def change
    add_reference :requisitions, :emp, index: true
  end
end
