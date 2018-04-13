class StepSevensController < ApplicationController
  before_action :set_step_seven, only: [:show, :edit, :update, :destroy]

  # GET /step_sevens
  # GET /step_sevens.json
  def index
    @step_sevens = StepSeven.all
  end

  # GET /step_sevens/1
  # GET /step_sevens/1.json
  def show
  end

  # GET /step_sevens/new
  def new
    @step_seven = StepSeven.new
  end

  # GET /step_sevens/1/edit
  def edit
  end

  # POST /step_sevens
  # POST /step_sevens.json
  def create
    @step_seven = StepSeven.new(step_seven_params)

    respond_to do |format|
      if @step_seven.save
        format.html { redirect_to "/delivery_flows", notice: 'Step seven was successfully created.' }
        format.json { render :show, status: :created, location: @step_seven }
      else
        format.html { render :new }
        format.json { render json: @step_seven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_sevens/1
  # PATCH/PUT /step_sevens/1.json
  def update
    respond_to do |format|
      if @step_seven.update(step_seven_params)
        format.html { redirect_to @step_seven, notice: 'Step seven was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_seven }
      else
        format.html { render :edit }
        format.json { render json: @step_seven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_sevens/1
  # DELETE /step_sevens/1.json
  def destroy
    @step_seven.destroy
    respond_to do |format|
      format.html { redirect_to step_sevens_url, notice: 'Step seven was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_seven
      @step_seven = StepSeven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_seven_params
      params.require(:step_seven).permit(:fechaRevisionPrevia, :pedido, :user_id, :completado)
    end
end
