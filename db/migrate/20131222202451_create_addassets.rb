class CreateAddassets < ActiveRecord::Migration
  def change
    create_table :addassets do |t|
      t.string :item
      t.string :type
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
