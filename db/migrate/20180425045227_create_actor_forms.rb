class CreateActorForms < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_forms do |t|
      t.integer :other_forms_link_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
