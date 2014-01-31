class AddTrashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :trash, :string
  end
end
