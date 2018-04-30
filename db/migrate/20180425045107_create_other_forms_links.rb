class CreateOtherFormsLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :other_forms_links do |t|
      t.string :form_link

      t.timestamps
    end
  end
end
