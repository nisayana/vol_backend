class RemoveLedanameFromOrganizations < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :leadname, :string
  end
end
