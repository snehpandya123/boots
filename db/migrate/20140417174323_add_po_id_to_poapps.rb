class AddPoIdToPoapps < ActiveRecord::Migration
  def change
    add_reference :poapps, :po, index: true
  end
end
