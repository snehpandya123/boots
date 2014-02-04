class AddUsernameToEmp < ActiveRecord::Migration
  def change
    add_column :emps, :username, :string
  end
end
