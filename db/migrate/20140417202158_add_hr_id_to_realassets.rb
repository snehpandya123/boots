class AddHrIdToRealassets < ActiveRecord::Migration
  def change
    add_reference :realassets, :hr, index: true
  end
end
