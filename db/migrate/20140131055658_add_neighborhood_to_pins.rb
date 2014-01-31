class AddNeighborhoodToPins < ActiveRecord::Migration
  def change
    add_column :pins, :neighborhood, :string
  end
end
