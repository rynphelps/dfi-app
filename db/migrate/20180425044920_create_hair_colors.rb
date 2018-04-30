class CreateHairColors < ActiveRecord::Migration[5.0]
  def change
    create_table :hair_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
