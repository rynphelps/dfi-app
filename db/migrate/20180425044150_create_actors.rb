class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.string :headshot_link
      t.string :instagram
      t.string :release_form_link
      t.string :medical_form_link
      t.text :availability
      t.string :phone_number
      t.integer :actor_weight_id
      t.integer :actor_height_id
      t.integer :nationality_id
      t.integer :eye_color_id
      t.integer :hair_color_id

      t.timestamps
    end
  end
end
