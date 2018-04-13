class StepSixesController < ApplicationController
  before_action :set_step_six, only: [:show, :edit, :update, :destroy]

  # GET /step_sixes
  # GET /step_sixes.json
  def index
    @step_sixes = StepSix.all
  end

  # GET /step_sixes/1
  # GET /step_sixes/1.json
  def show
  end

  # GET /step_sixes/new
  def new
    @step_six = StepSix.new
  end

  # GET /step_sixes/1/edit
  def edit
  end

  # POST /step_sixes
  # POST /step_sixes.json
  def create
    @step_six = StepSix.new(step_six_params)

    respond_to do |format|
      if @step_six.save
        format.html { redirect_to "/delivery_flows", notice: 'Step six was successfully created.' }
        format.json { render :show, status: :created, location: @step_six }
      else
        format.html { render :new }
        format.json { render json: @step_six.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_sixes/1
  # PATCH/PUT /step_sixes/1.json
  def update
    respond_to do |format|
      if @step_six.update(step_six_params)
        format.html { redirect_to @step_six, notice: 'Step six was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_six }
      else
        format.html { render :edit }
        format.json { render json: @step_six.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_sixes/1
  # DELETE /step_sixes/1.json
  def destroy
    @step_six.destroy
    respond_to do |format|
      format.html { redirect_to step_sixes_url, notice: 'Step six was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_six
      @step_six = StepSix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_six_params
      params.require(:step_six).permit(:revisionPagos, :observaciones, :pedido, :user_id, :completado)
    end
end
