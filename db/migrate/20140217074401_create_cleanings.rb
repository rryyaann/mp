class CreateCleanings < ActiveRecord::Migration
  def change
    create_table :cleanings do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
