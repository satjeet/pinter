class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encargado, :boolean ,:null => false, :default => false
    add_column :users, :administrador, :boolean,:null => false, :default => false
  end
end
