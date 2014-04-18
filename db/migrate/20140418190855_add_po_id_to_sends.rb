class AddPoIdToSends < ActiveRecord::Migration
  def change
    add_reference :sends, :po, index: true
  end
end
