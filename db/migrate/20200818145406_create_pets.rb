class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :breed
      t.string :age
      t.string :gender
      t.string :size
      t.string :img_url
      t.string :name
      t.string :description
      t.string :video_url
      t.string :status
      t.string :tags
      t.string :contact_email
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
