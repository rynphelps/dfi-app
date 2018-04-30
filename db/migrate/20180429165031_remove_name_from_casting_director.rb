class RemoveNameFromCastingDirector < ActiveRecord::Migration[5.0]
  def change
    remove_column :casting_directors, :name, :string
  end
end
