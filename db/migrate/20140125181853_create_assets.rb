class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.string :location
      t.string :tp
      t.string :cost

      t.timestamps
    end
  end
end
