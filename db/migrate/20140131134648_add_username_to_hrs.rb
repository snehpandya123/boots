class AddUsernameToHrs < ActiveRecord::Migration
  def change
    add_column :hrs, :username, :string
  end
end
