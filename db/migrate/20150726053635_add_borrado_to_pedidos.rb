class AddBorradoToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :borrado, :boolean, :null => false, :default => false
  end
end
