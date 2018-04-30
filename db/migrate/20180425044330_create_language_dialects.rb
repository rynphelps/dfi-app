class CreateLanguageDialects < ActiveRecord::Migration[5.0]
  def change
    create_table :language_dialects do |t|
      t.string :language

      t.timestamps
    end
  end
end
