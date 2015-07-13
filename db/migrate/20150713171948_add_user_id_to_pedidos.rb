class AddUserIdToPedidos < ActiveRecord::Migration
  def change
    add_index :pedidos, :user_id
  end
end
