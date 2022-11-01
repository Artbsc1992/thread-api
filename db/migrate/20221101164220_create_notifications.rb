class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.text :message
      t.boolean :viewed
      t.references :user_id, null: false, foreign_key: { to_table: :users }
      t.references :daily_id, null: false, foreign_key: { to_table: :dailies }

      t.timestamps
    end
  end
end
