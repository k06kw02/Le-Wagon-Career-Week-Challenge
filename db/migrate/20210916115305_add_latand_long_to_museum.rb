class AddLatandLongToMuseum < ActiveRecord::Migration[6.0]
  def change
    add_column :museums, :latitude, :float
    add_column :museums, :longitude, :float
  end
end
