json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :descripcion_corta, :descripcion_larga, :user_id, :fecha_entrega, :hora_entrega, :sucursal_entrega, :direccion_entrega, :estado_pedido, :cliente, :numero_guia, :metodo_pago, :abono, :precio_total, :celular, :telefono, :correo
  json.url pedido_url(pedido, format: :json)
end
