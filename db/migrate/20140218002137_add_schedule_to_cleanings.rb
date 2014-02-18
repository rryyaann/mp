class AddScheduleToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :schedule, :string
  end
end
