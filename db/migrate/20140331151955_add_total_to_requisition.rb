class AddTotalToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :total, :integer
  end
end
