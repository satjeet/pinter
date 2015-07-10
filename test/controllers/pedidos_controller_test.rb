require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { abono: @pedido.abono, celular: @pedido.celular, cliente: @pedido.cliente, correo: @pedido.correo, descripcion_corta: @pedido.descripcion_corta, descripcion_larga: @pedido.descripcion_larga, direccion_entrega: @pedido.direccion_entrega, estado_pedido: @pedido.estado_pedido, fecha_entrega: @pedido.fecha_entrega, hora_entrega: @pedido.hora_entrega, metodo_pago: @pedido.metodo_pago, numero_guia: @pedido.numero_guia, precio_total: @pedido.precio_total, sucursal_entrega: @pedido.sucursal_entrega, telefono: @pedido.telefono, user_id: @pedido.user_id }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    patch :update, id: @pedido, pedido: { abono: @pedido.abono, celular: @pedido.celular, cliente: @pedido.cliente, correo: @pedido.correo, descripcion_corta: @pedido.descripcion_corta, descripcion_larga: @pedido.descripcion_larga, direccion_entrega: @pedido.direccion_entrega, estado_pedido: @pedido.estado_pedido, fecha_entrega: @pedido.fecha_entrega, hora_entrega: @pedido.hora_entrega, metodo_pago: @pedido.metodo_pago, numero_guia: @pedido.numero_guia, precio_total: @pedido.precio_total, sucursal_entrega: @pedido.sucursal_entrega, telefono: @pedido.telefono, user_id: @pedido.user_id }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
end
