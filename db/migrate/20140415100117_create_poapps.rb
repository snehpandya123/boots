class CreatePoapps < ActiveRecord::Migration
  def change
    create_table :poapps do |t|
      t.string :invoice
      t.string :action
      t.string :from
      t.string :date

      t.timestamps
    end
  end
end
