class AddUsernameToAuthorizes < ActiveRecord::Migration
  def change
    add_column :authorizes, :username, :string
  end
end
