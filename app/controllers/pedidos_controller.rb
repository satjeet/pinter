class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]
  before_action :authorized_user, only: [:edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.where("fecha_entrega >= ?", Date.today)
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = current_user.pedidos.build

  if current_user.encargado?
  @linkpedido = current_user.pedidos.build
  else 
  redirect_to pedidos_path, notice: "No esta autorizado para editar este link" if @linkpedido.nil?
  end
  
  end

  # GET /pedidos/1/edit
  def edit
  
  end

  # POST /pedidos
  # POST /pedidos.json
 
  
  def create
    @pedido = current_user.pedidos.build(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

 def authorized_user
  if current_user.encargado?
  @linkpedido = Pedido.find_by(id: params[:id]) 
  else 
   @linkpedido = current_user.pedidos.find_by(id: params[:id]) 
  end
    redirect_to pedidos_path, notice: "No esta autorizado para editar este link" if @linkpedido.nil?
 end



  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
   
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:borrado,:numero_pedido_general,:numero_guia_matriz,:descripcion_corta, :descripcion_larga, :user_id, :fecha_entrega, :hora_entrega, :sucursal_entrega, :direccion_entrega, :estado_pedido, :cliente, :numero_guia, :metodo_pago, :abono, :precio_total, :celular, :telefono, :correo)
    end
end
