class CreateDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :dailies do |t|
      t.text :img
      t.text :content

      t.timestamps
    end
  end
end