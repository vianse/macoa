class TipoVentaController < ApplicationController
  before_action :set_tipo_ventum, only: [:show, :edit, :update, :destroy]

  # GET /tipo_venta
  # GET /tipo_venta.json
  def index
    @tipo_venta = TipoVentum.all
  end

  # GET /tipo_venta/1
  # GET /tipo_venta/1.json
  def show
  end

  # GET /tipo_venta/new
  def new
    @tipo_ventum = TipoVentum.new
  end

  # GET /tipo_venta/1/edit
  def edit
  end

  # POST /tipo_venta
  # POST /tipo_venta.json
  def create
    @tipo_ventum = TipoVentum.new(tipo_ventum_params)

    respond_to do |format|
      if @tipo_ventum.save
        format.html { redirect_to @tipo_ventum, notice: 'Tipo ventum was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_ventum }
      else
        format.html { render :new }
        format.json { render json: @tipo_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_venta/1
  # PATCH/PUT /tipo_venta/1.json
  def update
    respond_to do |format|
      if @tipo_ventum.update(tipo_ventum_params)
        format.html { redirect_to @tipo_ventum, notice: 'Tipo ventum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_ventum }
      else
        format.html { render :edit }
        format.json { render json: @tipo_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_venta/1
  # DELETE /tipo_venta/1.json
  def destroy
    @tipo_ventum.destroy
    respond_to do |format|
      format.html { redirect_to tipo_venta_url, notice: 'Tipo ventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_ventum
      @tipo_ventum = TipoVentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_ventum_params
      params.require(:tipo_ventum).permit(:tipoVenta)
    end
end
