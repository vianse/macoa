class StepEightsController < ApplicationController
  before_action :set_step_eight, only: [:show, :edit, :update, :destroy]

  # GET /step_eights
  # GET /step_eights.json
  def index
    @step_eights = StepEight.all
  end

  # GET /step_eights/1
  # GET /step_eights/1.json
  def show
  end

  # GET /step_eights/new
  def new
    @step_eight = StepEight.new
  end

  # GET /step_eights/1/edit
  def edit
  end

  # POST /step_eights
  # POST /step_eights.json
  def create
    @step_eight = StepEight.new(step_eight_params)

    respond_to do |format|
      if @step_eight.save
        format.html { redirect_to "/delivery_flows", notice: 'Step eight was successfully created.' }
        format.json { render :show, status: :created, location: @step_eight }
      else
        format.html { render :new }
        format.json { render json: @step_eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_eights/1
  # PATCH/PUT /step_eights/1.json
  def update
    respond_to do |format|
      if @step_eight.update(step_eight_params)
        format.html { redirect_to @step_eight, notice: 'Step eight was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_eight }
      else
        format.html { render :edit }
        format.json { render json: @step_eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_eights/1
  # DELETE /step_eights/1.json
  def destroy
    @step_eight.destroy
    respond_to do |format|
      format.html { redirect_to step_eights_url, notice: 'Step eight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_eight
      @step_eight = StepEight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_eight_params
      params.require(:step_eight).permit(:inicio, :fin, :pedido, :user_id, :completado)
    end
end
