class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :film_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
