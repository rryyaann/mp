class RemoveScheduleFromCleanings < ActiveRecord::Migration
  def change
    remove_column :cleanings, :schedule, :string
  end
end
