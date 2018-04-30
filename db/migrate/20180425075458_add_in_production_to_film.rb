class AddInProductionToFilm < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :in_production, :boolean
  end
end
