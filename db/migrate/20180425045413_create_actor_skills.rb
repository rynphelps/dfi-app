class CreateActorSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_skills do |t|
      t.integer :special_skill_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
