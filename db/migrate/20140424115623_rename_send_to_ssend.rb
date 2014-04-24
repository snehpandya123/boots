class RenameSendToSsend < ActiveRecord::Migration
  def change
  	rename_table :sends, :ssends
  end
end
