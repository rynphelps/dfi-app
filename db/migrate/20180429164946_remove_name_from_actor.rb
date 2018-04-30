class RemoveNameFromActor < ActiveRecord::Migration[5.0]
  def change
    remove_column :actors, :name, :string
  end
end
