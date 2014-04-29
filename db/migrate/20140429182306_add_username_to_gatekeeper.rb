class AddUsernameToGatekeeper < ActiveRecord::Migration
  def change
    add_column :gatekeepers, :username, :string
  end
end
