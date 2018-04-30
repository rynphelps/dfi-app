class CreateEyeColors < ActiveRecord::Migration[5.0]
  def change
    create_table :eye_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
