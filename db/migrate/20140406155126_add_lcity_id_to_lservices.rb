class AddLcityIdToLservices < ActiveRecord::Migration
  def change
    add_reference :lservices, :lcity, index: true
  end
end
