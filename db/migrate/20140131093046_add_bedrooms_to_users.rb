class AddBedroomsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bedrooms, :integer
  end
end
