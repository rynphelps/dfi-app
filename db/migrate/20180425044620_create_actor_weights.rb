class CreateActorWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_weights do |t|
      t.string :weight

      t.timestamps
    end
  end
end
