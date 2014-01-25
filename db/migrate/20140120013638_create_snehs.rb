class CreateSnehs < ActiveRecord::Migration
  def change
    create_table :snehs do |t|
      t.string :text

      t.timestamps
    end
  end
end
