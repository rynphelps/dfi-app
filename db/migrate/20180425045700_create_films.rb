class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name
      t.string :year
      t.string :director
      t.string :video_link

      t.timestamps
    end
  end
end
