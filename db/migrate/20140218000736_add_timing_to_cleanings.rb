class AddTimingToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :timing, :datetime
  end
end
