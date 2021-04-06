class AddLatToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :lat, :string
  end
end
