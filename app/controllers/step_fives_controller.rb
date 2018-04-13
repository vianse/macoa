class StepFivesController < ApplicationController
  before_action :set_step_fife, only: [:show, :edit, :update, :destroy]

  # GET /step_fives
  # GET /step_fives.json
  def index
    @step_fives = StepFive.all
  end

  # GET /step_fives/1
  # GET /step_fives/1.json
  def show
  end

  # GET /step_fives/new
  def new
    @step_fife = StepFive.new
  end

  # GET /step_fives/1/edit
  def edit
  end

  # POST /step_fives
  # POST /step_fives.json
  def create
    @step_fife = StepFive.new(step_fife_params)

    respond_to do |format|
      if @step_fife.save
        format.html { redirect_to "/delivery_flows", notice: 'Step five was successfully created.' }
        format.json { render :show, status: :created, location: @step_fife }
      else
        format.html { render :new }
        format.json { render json: @step_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_fives/1
  # PATCH/PUT /step_fives/1.json
  def update
    respond_to do |format|
      if @step_fife.update(step_fife_params)
        format.html { redirect_to @step_fife, notice: 'Step five was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_fife }
      else
        format.html { render :edit }
        format.json { render json: @step_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_fives/1
  # DELETE /step_fives/1.json
  def destroy
    @step_fife.destroy
    respond_to do |format|
      format.html { redirect_to step_fives_url, notice: 'Step five was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_fife
      @step_fife = StepFive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_fife_params
      params.require(:step_fife).permit(:confirmacion, :documentacion, :placas, :observaciones, :gestorConfirmacion, :nombreGestor, :fechaEntregaGestor, :pedido, :user_id, :completado)
    end
end
