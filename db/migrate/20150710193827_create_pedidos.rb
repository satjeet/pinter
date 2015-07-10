class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :descripcion_corta
      t.text :descripcion_larga
      t.integer :user_id
      t.date :fecha_entrega
      t.time :hora_entrega
      t.string :sucursal_entrega
      t.text :direccion_entrega
      t.string :estado_pedido
      t.string :cliente
      t.string :numero_guia
      t.string :metodo_pago
      t.integer :abono
      t.integer :precio_total
      t.string :celular
      t.string :telefono
      t.string :correo

      t.timestamps null: false
    end
  end
end
