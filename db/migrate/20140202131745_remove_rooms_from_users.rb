class RemoveRoomsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :rooms, :string
  end
end
