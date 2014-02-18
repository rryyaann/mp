class RemoveDateFromCleanings < ActiveRecord::Migration
  def change
    remove_column :cleanings, :date, :date
  end
end
