class AddLngToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :lng, :string
  end
end
