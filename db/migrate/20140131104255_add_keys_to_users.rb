class AddKeysToUsers < ActiveRecord::Migration
  def change
    add_column :users, :keys, :string
  end
end
