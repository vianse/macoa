class StepFoursController < ApplicationController
  before_action :set_step_four, only: [:show, :edit, :update, :destroy]

  # GET /step_fours
  # GET /step_fours.json
  def index
    @step_fours = StepFour.all
  end

  # GET /step_fours/1
  # GET /step_fours/1.json
  def show
  end

  # GET /step_fours/new
  def new
    @step_four = StepFour.new
  end

  # GET /step_fours/1/edit
  def edit
  end

  # POST /step_fours
  # POST /step_fours.json
  def create
    @step_four = StepFour.new(step_four_params)

    respond_to do |format|
      if @step_four.save
        format.html { redirect_to "/delivery_flows", notice: 'Step four was successfully created.' }
        format.json { render :show, status: :created, location: @step_four }
      else
        format.html { render :new }
        format.json { render json: @step_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_fours/1
  # PATCH/PUT /step_fours/1.json
  def update
    respond_to do |format|
      if @step_four.update(step_four_params)
        format.html { redirect_to @step_four, notice: 'Step four was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_four }
      else
        format.html { render :edit }
        format.json { render json: @step_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_fours/1
  # DELETE /step_fours/1.json
  def destroy
    @step_four.destroy
    respond_to do |format|
      format.html { redirect_to step_fours_url, notice: 'Step four was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_four
      @step_four = StepFour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_four_params
      params.require(:step_four).permit(:accesorio, :inicio, :fin, :pedido, :user_id, :completado)
    end
end
