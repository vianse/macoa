class StepTwosController < ApplicationController
  before_action :set_step_two, only: [:show, :edit, :update, :destroy]

  # GET /step_twos
  # GET /step_twos.json
  def index
    @step_twos = StepTwo.all
  end

  # GET /step_twos/1
  # GET /step_twos/1.json
  def show
  end

  # GET /step_twos/new
  def new
    @step_two = StepTwo.new
  end

  # GET /step_twos/1/edit
  def edit
  end

  # POST /step_twos
  # POST /step_twos.json
  def create
    @step_two = StepTwo.new(step_two_params)

    respond_to do |format|
      if @step_two.save
        format.html { redirect_to "/delivery_flows", notice: 'Step two was successfully created.' }
        format.json { render :show, status: :created, location: @step_two }
      else
        format.html { render :new }
        format.json { render json: @step_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_twos/1
  # PATCH/PUT /step_twos/1.json
  def update
    respond_to do |format|
      if @step_two.update(step_two_params)
        format.html { redirect_to @step_two, notice: 'Step two was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_two }
      else
        format.html { render :edit }
        format.json { render json: @step_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_twos/1
  # DELETE /step_twos/1.json
  def destroy
    @step_two.destroy
    respond_to do |format|
      format.html { redirect_to step_twos_url, notice: 'Step two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_two
      @step_two = StepTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_two_params
      params.require(:step_two).permit(:desembolso, :fecha, :hora, :observaciones, :pedido, :user_id, :completado)
    end
end
