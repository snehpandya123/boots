class CreateRealassets < ActiveRecord::Migration
  def change
    create_table :realassets do |t|
      t.string :name
      t.string :typ
      t.string :locat
      t.string :cost

      t.timestamps
    end
  end
end
