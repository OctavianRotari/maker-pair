class AvailabilitysController < ApplicationController

  def new
    @profile = Profile.find(params[:profile_id])
    @availability = Availability.new
  end

end
