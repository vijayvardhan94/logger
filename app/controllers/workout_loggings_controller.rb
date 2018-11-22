class WorkoutLoggingsController < ApplicationController
  before_action :set_workout_logging, only: [:show, :edit, :update, :destroy]

  # GET /workout_loggings
  # GET /workout_loggings.json
  def index
    @workout_loggings = WorkoutLogging.all
  end

  # GET /workout_loggings/1
  # GET /workout_loggings/1.json
  def show
  end

  # GET /workout_loggings/new
  def new
    @workout_logging = WorkoutLogging.new
  end

  # GET /workout_loggings/1/edit
  def edit
  end

  # POST /workout_loggings
  # POST /workout_loggings.json
  def create
    @workout_logging = WorkoutLogging.new(workout_logging_params)

    respond_to do |format|
      if @workout_logging.save
        format.html { redirect_to @workout_logging, notice: 'Workout logging was successfully created.' }
        format.json { render :show, status: :created, location: @workout_logging }
      else
        format.html { render :new }
        format.json { render json: @workout_logging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_loggings/1
  # PATCH/PUT /workout_loggings/1.json
  def update
    respond_to do |format|
      if @workout_logging.update(workout_logging_params)
        format.html { redirect_to @workout_logging, notice: 'Workout logging was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_logging }
      else
        format.html { render :edit }
        format.json { render json: @workout_logging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_loggings/1
  # DELETE /workout_loggings/1.json
  def destroy
    @workout_logging.destroy
    respond_to do |format|
      format.html { redirect_to workout_loggings_url, notice: 'Workout logging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_logging
      @workout_logging = WorkoutLogging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_logging_params
      params.require(:workout_logging).permit(:date, :dailyHeartRate, :float, :hourlyHeartRate, :float, :height, :weight, :steps, :lightlyActiveminutes, :fairlyActiveminutes, :veryActiveminutes, :activityCalories, :sleepStartTime, :sleepEndTime)
    end
end
