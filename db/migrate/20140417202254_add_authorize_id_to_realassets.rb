class AddAuthorizeIdToRealassets < ActiveRecord::Migration
  def change
    add_reference :realassets, :authorize, index: true
  end
end
