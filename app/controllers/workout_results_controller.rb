class WorkoutResultsController < ApplicationController
  before_action :set_workout_result, only: [:show, :edit, :update, :destroy]

  # GET /workout_results
  # GET /workout_results.json
  def index
    @workout_results = WorkoutResult.all
  end

  # GET /workout_results/1
  # GET /workout_results/1.json
  def show
  end

  # GET /workout_results/new
  def new
    @workout_result = WorkoutResult.new
  end

  # GET /workout_results/1/edit
  def edit
  end

  # POST /workout_results
  # POST /workout_results.json
  def create
    @workout_result = WorkoutResult.new(workout_result_params)

    respond_to do |format|
      if @workout_result.save
        format.html { redirect_to @workout_result, notice: 'Workout result was successfully created.' }
        format.json { render :show, status: :created, location: @workout_result }
      else
        format.html { render :new }
        format.json { render json: @workout_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_results/1
  # PATCH/PUT /workout_results/1.json
  def update
    respond_to do |format|
      if @workout_result.update(workout_result_params)
        format.html { redirect_to @workout_result, notice: 'Workout result was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_result }
      else
        format.html { render :edit }
        format.json { render json: @workout_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_results/1
  # DELETE /workout_results/1.json
  def destroy
    @workout_result.destroy
    respond_to do |format|
      format.html { redirect_to workout_results_url, notice: 'Workout result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_result
      @workout_result = WorkoutResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_result_params
      params.require(:workout_result).permit(:workout_id, :value)
    end
end
