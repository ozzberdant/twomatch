class AddEmailToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :email, :string
  end
end
