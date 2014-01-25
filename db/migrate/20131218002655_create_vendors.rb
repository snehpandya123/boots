class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :location
      t.string :ph_no
      t.string :mobile_no
      t.string :asset_name

      t.timestamps
    end
  end
end
