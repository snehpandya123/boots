class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|
      t.string :invoiceno
      t.string :pono
      t.string :vname
      t.string :vadd
      t.string :podate
      t.string :requisitner
      t.string :forby
      t.string :forto
      t.string :terms
      t.string :name
      t.string :particular
      t.string :unit
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
