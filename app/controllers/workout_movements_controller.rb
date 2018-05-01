class WorkoutMovementsController < ApplicationController
  before_action :set_workout_movement, only: [:show, :edit, :update, :destroy]

  # GET /workout_movements
  # GET /workout_movements.json
  def index
    @workout_movements = WorkoutMovement.all
  end

  # GET /workout_movements/1
  # GET /workout_movements/1.json
  def show
  end

  # GET /workout_movements/new
  def new
    @workout_movement = WorkoutMovement.new
  end

  # GET /workout_movements/1/edit
  def edit
  end

  # POST /workout_movements
  # POST /workout_movements.json
  def create
    @workout_movement = WorkoutMovement.new(workout_movement_params)

    respond_to do |format|
      if @workout_movement.save
        format.html { redirect_to @workout_movement, notice: 'Workout movement was successfully created.' }
        format.json { render :show, status: :created, location: @workout_movement }
      else
        format.html { render :new }
        format.json { render json: @workout_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_movements/1
  # PATCH/PUT /workout_movements/1.json
  def update
    respond_to do |format|
      if @workout_movement.update(workout_movement_params)
        format.html { redirect_to @workout_movement, notice: 'Workout movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_movement }
      else
        format.html { render :edit }
        format.json { render json: @workout_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_movements/1
  # DELETE /workout_movements/1.json
  def destroy
    @workout_movement.destroy
    respond_to do |format|
      format.html { redirect_to workout_movements_url, notice: 'Workout movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_movement
      @workout_movement = WorkoutMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_movement_params
      params.fetch(:workout_movement, {})
    end
end
