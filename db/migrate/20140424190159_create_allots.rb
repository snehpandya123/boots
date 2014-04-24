class CreateAllots < ActiveRecord::Migration
  def change
    create_table :allots do |t|

      t.timestamps
    end
  end
end
