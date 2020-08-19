class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :animal
      t.string :breed
      t.string :age
      t.string :gender
      t.string :size
      t.string :img_url
      t.string :name
      t.string :description
      t.string :video_url
      t.string :status
      t.string :contact_email
      t.string :city
      t.string :state
      t.integer :user_id, :default => nil 

      t.timestamps
    end
  end
end
