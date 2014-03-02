class AddSfToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sf, :integer
  end
end
