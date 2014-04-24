class AddSendIdToStocks < ActiveRecord::Migration
  def change
    add_reference :stocks, :send, index: true
  end
end
