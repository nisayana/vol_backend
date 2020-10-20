class CreateDashListJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :dash_list_joiners do |t|
      t.belongs_to :list, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
