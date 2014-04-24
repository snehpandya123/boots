class AddStockIdToAllots < ActiveRecord::Migration
  def change
    add_reference :allots, :stock, index: true
  end
end
