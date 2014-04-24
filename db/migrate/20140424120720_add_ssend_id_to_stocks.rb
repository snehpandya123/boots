class AddSsendIdToStocks < ActiveRecord::Migration
  def change
    add_reference :stocks, :ssend, index: true
  end
end
