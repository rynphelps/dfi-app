class CreateSpecialSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :special_skills do |t|
      t.string :skill

      t.timestamps
    end
  end
end
