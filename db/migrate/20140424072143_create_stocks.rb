class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :invoice
      t.string :requ
      t.string :sendto

      t.timestamps
    end
  end
end
