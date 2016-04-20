class DaysController < ApplicationController
  before_action :set_days
  before_action :set_day, only: [:show, :edit, :update, :destroy]
  before_action :set_workouts

  # GET programs/1/days
  def index
    @days = @program.days
  end

  # GET programs/1/days/1
  def show
  end

  # GET programs/1/days/new
  def new
    @day = @program.days.build
  end

  # GET programs/1/days/1/edit
  def edit
  end

  # POST programs/1/days
  def create
    @day = @program.days.build(day_params)

    if @day.save
      redirect_to([@day.program, @day], notice: 'Day was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT programs/1/days/1
  def update
    if @day.update_attributes(day_params)
      redirect_to([@day.program, @day], notice: 'Day was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE programs/1/days/1
  def destroy
    @day.destroy

    redirect_to program_days_url(@program)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_days
      @program = Program.find(params[:program_id])
    end

    def set_day
      @day = @program.days.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def day_params
      params.require(:day).permit(:weight, :workout, :water_consumed, :green_used, :purple_used, :red_used, :yellow_used, :blue_used, :orange_used, :tbsp_used)
    end
    
    def set_workouts
      @workouts = Day.workouts
    end
end
