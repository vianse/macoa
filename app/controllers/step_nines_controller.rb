class StepNinesController < ApplicationController
  before_action :set_step_nine, only: [:show, :edit, :update, :destroy]

  # GET /step_nines
  # GET /step_nines.json
  def index
    @step_nines = StepNine.all
  end

  # GET /step_nines/1
  # GET /step_nines/1.json
  def show
  end

  # GET /step_nines/new
  def new
    @step_nine = StepNine.new
  end

  # GET /step_nines/1/edit
  def edit
  end

  # POST /step_nines
  # POST /step_nines.json
  def create
    @step_nine = StepNine.new(step_nine_params)

    respond_to do |format|
      if @step_nine.save
        format.html { redirect_to "/delivery_flows", notice: 'Step nine was successfully created.' }
        format.json { render :show, status: :created, location: @step_nine }
      else
        format.html { render :new }
        format.json { render json: @step_nine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_nines/1
  # PATCH/PUT /step_nines/1.json
  def update
    respond_to do |format|
      if @step_nine.update(step_nine_params)
        format.html { redirect_to @step_nine, notice: 'Step nine was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_nine }
      else
        format.html { render :edit }
        format.json { render json: @step_nine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_nines/1
  # DELETE /step_nines/1.json
  def destroy
    @step_nine.destroy
    respond_to do |format|
      format.html { redirect_to step_nines_url, notice: 'Step nine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_nine
      @step_nine = StepNine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_nine_params
      params.require(:step_nine).permit(:sala, :auto, :factura, :pedido, :user_id, :completado)
    end
end
