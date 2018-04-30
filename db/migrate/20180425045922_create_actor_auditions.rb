class CreateActorAuditions < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_auditions do |t|
      t.integer :actor_id
      t.integer :audition_link_id

      t.timestamps
    end
  end
end
