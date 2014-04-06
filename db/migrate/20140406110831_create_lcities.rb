class CreateLcities < ActiveRecord::Migration
  def change
    create_table :lcities do |t|
      t.string :lcode
      t.string :lname
      t.integer :lexperience
      t.string :llocation
      t.string :lrating

      t.timestamps
    end
  end
end
