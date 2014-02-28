class AddFocusToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :focus, :string
  end
end
