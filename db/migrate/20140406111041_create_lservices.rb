class CreateLservices < ActiveRecord::Migration
  def change
    create_table :lservices do |t|
      t.string :lcode
      t.string :lscode
      t.string :lname
      t.integer :lcharg

      t.timestamps
    end
  end
end
