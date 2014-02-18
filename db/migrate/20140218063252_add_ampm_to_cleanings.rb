class AddAmpmToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :ampm, :integer
  end
end
