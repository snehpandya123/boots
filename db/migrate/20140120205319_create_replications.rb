class CreateReplications < ActiveRecord::Migration
  def change
    create_table :replications do |t|
      t.integer :sr_no
      t.string :particular
      t.string :unit
      t.integer :quantity

      t.timestamps
    end
  end
end
