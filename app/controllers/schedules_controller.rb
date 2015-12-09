class SchedulesController < ApplicationController

  def new
    @profile = Profile.find(params[:restaurant_id])
    @schedule = Schedule.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @profile.schedules.create(schedule_params)
  end

  def schedule_params
    params.require(:schedule).permit(:availability)
  end
end
