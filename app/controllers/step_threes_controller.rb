class StepThreesController < ApplicationController
  before_action :set_step_three, only: [:show, :edit, :update, :destroy]

  # GET /step_threes
  # GET /step_threes.json
  def index
    @step_threes = StepThree.all
  end

  # GET /step_threes/1
  # GET /step_threes/1.json
  def show
  end

  # GET /step_threes/new
  def new
    @step_three = StepThree.new
  end

  # GET /step_threes/1/edit
  def edit
  end

  # POST /step_threes
  # POST /step_threes.json
  def create
    @step_three = StepThree.new(step_three_params)

    respond_to do |format|
      if @step_three.save
        format.html { redirect_to "/delivery_flows", notice: 'Step three was successfully created.' }
        format.json { render :show, status: :created, location: @step_three }
      else
        format.html { render :new }
        format.json { render json: @step_three.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_threes/1
  # PATCH/PUT /step_threes/1.json
  def update
    respond_to do |format|
      if @step_three.update(step_three_params)
        format.html { redirect_to @step_three, notice: 'Step three was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_three }
      else
        format.html { render :edit }
        format.json { render json: @step_three.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_threes/1
  # DELETE /step_threes/1.json
  def destroy
    @step_three.destroy
    respond_to do |format|
      format.html { redirect_to step_threes_url, notice: 'Step three was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_three
      @step_three = StepThree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_three_params
      params.require(:step_three).permit(:numeroFactura, :vehiculo, :nombreVendedor, :cliente, :notasCargo, :notasCredito, :pedido, :user_id, :completado)
    end
end
