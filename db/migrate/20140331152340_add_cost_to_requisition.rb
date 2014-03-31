class AddCostToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :cost, :integer
  end
end
