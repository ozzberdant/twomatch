class AddUserToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :user_id, :integer
  end
end
