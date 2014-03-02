class AddBathroomsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bathrooms, :integer
  end
end
