class AddSendsIdToInvard < ActiveRecord::Migration
  def change
    add_reference :invards, :ssend, index: true
  end
end
