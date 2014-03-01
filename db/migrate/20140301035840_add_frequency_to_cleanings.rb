class AddFrequencyToCleanings < ActiveRecord::Migration
  def change
    add_column :cleanings, :frequency, :integer
  end
end
