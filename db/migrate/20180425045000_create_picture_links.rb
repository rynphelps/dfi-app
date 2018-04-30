class CreatePictureLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :picture_links do |t|
      t.string :photo

      t.timestamps
    end
  end
end
