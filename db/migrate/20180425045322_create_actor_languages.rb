class CreateActorLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_languages do |t|
      t.integer :actor_id
      t.integer :language_dialect_id

      t.timestamps
    end
  end
end
