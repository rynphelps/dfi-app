class CreateActorHeights < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_heights do |t|
      t.string :height

      t.timestamps
    end
  end
end
