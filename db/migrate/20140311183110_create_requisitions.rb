class CreateRequisitions < ActiveRecord::Migration
  def change
    create_table :requisitions do |t|
      t.string :name
      t.string :particular
      t.string :unit
      t.integer :quantity
      t.string :from

      t.timestamps
    end
  end
end
