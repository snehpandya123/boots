class AddUsernameHrs < ActiveRecord::Migration
  
  	def self.up
    add_column :hrs, :username, :string
  end

  def self.down
    remove_column :hrs, :username, :string
  end
 
  
end
