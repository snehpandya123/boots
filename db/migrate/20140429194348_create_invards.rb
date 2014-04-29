class CreateInvards < ActiveRecord::Migration
  def change
    create_table :invards do |t|
      t.string :invoice
      t.string :remark

      t.timestamps
    end
  end
end
