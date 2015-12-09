class SchedulesController < ApplicationController

def index

  @current_user = current_user if current_user != nil
  @profile = Profile.find(params[:profile_id])
  @all_profiles = Profile.all
  @profile.availability.shift(1)
  @student_availability = @profile.availability
  @result = []


end


  # def new
  #
  #   @profile = Profile.find(params[:profile_id])
  #   @schedule = Schedule.new
  # end
  #
  # def create
  #
  #   @profile = Profile.find(params[:profile_id])
  #   @profile.schedules.create(schedule_params)
  # end
  #
  # def schedule_params
  #   params.require(:schedule).permit(:availability)
  # end
end
