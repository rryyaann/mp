class AddMaidToPins < ActiveRecord::Migration
  def change
    add_column :pins, :maid, :string
  end
end
