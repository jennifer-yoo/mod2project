class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.integer :user_id
      t.integer :pet_id
      t.string :note

      t.timestamps
    end
  end
end
