class CreateFilmCasters < ActiveRecord::Migration[5.0]
  def change
    create_table :film_casters do |t|
      t.integer :casting_director_id
      t.integer :film_id

      t.timestamps
    end
  end
end
