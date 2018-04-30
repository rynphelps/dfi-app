class CreateActorPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_pictures do |t|
      t.integer :picture_link_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
