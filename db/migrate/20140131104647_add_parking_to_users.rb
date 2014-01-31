class AddParkingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :parking, :string
  end
end
