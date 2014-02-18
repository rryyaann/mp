class RemoveTimingFromCleanings < ActiveRecord::Migration
  def change
    remove_column :cleanings, :timing, :datetime
  end
end
