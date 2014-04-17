class AddEmpIdToRealassets < ActiveRecord::Migration
  def change
    add_reference :realassets, :emp, index: true
  end
end
