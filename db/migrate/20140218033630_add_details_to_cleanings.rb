class AddDetailsToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :month, :integer
    add_column :cleanings, :day, :integer
    add_column :cleanings, :hour, :integer
    add_column :cleanings, :minute, :integer
  end
end
