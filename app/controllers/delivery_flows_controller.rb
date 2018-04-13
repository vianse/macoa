class DeliveryFlowsController < ApplicationController
  before_action :set_delivery_flow, only: [:show, :edit, :update, :destroy]

  # GET /delivery_flows
  # GET /delivery_flows.json
  def index
    @delivery_flows = DeliveryFlow.all.order('created_at DESC')

  end

  # GET /delivery_flows/1
  # GET /delivery_flows/1.json
  def show
  end

  # GET /delivery_flows/new
  def new
    @delivery_flow = DeliveryFlow.new
  end

  # GET /delivery_flows/1/edit
  def edit
  end

  # POST /delivery_flows
  # POST /delivery_flows.json
  def create
    @delivery_flow = DeliveryFlow.new(delivery_flow_params)

    respond_to do |format|
      if @delivery_flow.save
        format.html { redirect_to "/delivery_flows", notice: 'Delivery flow was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_flow }
      else
        format.html { render :new }
        format.json { render json: @delivery_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_flows/1
  # PATCH/PUT /delivery_flows/1.json
  def update
    respond_to do |format|
      if @delivery_flow.update(delivery_flow_params)
        format.html { redirect_to @delivery_flow, notice: 'Delivery flow was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_flow }
      else
        format.html { render :edit }
        format.json { render json: @delivery_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_flows/1
  # DELETE /delivery_flows/1.json
  def destroy
    @delivery_flow.destroy
    respond_to do |format|
      format.html { redirect_to delivery_flows_url, notice: 'Delivery flow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_flow
      @delivery_flow = DeliveryFlow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_flow_params
      params.require(:delivery_flow).permit(:pedido, :nombreCliente, :tipoCredito, :fechaPromesaEntrega, :observaciones, :accesorios, :placas, :user_id)
    end
end
