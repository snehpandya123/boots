class AddUsernameToEmployes < ActiveRecord::Migration
  def change
    add_column :employes, :username, :string
  end
end
