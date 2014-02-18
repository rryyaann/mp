class RemoveTimeFromCleanings < ActiveRecord::Migration
  def change
    remove_column :cleanings, :time, :time
  end
end
