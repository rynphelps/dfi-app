class AddUserIdToCastingDirector < ActiveRecord::Migration[5.0]
  def change
    add_column :casting_directors, :user_id, :integer
  end
end
