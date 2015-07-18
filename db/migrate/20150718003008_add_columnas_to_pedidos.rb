class AddColumnasToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :numero_guia_matriz, :string
    add_column :pedidos, :numero_pedido_general, :string
    add_column :pedidos, :texto_torta, :string
  end
end
