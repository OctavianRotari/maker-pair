class ProfileController < ApplicationController
    before_action :authenticate_user!, :except => [:index]

    # before_create :stringify_avail

  def index

   @current_user = current_user if current_user != nil
  #  @profile = Profile.find(params[:id])
   @profiles = Profile.all
   @all_profiles = Profile.all
  #  @student_availability = @profile.availability.shift(1)
   @result = []
  end





 def profile_params
   params.require(:profile).permit(:status, :name, :surname, :language, :expertise, :occupation, :location, :availability => [])
 end

 def show
   @profile = Profile.find(params[:id])
 end

 def edit
   @profile = Profile.find(params[:id])

 end

 def update
   @profile = Profile.find(params[:id])


   if @profile.user_id == current_user.id
     @profile.update(profile_params)
     flash[:notice] = 'Profile updated successfully'
   else
     flash[:notice] = 'You have no permission to update this profile'
   end

   redirect_to '/profile'
 end

 def destroy
   @profile = Profile.find(params[:id])
   if @profile.user_id == current_user.id
     @profile.destroy
     flash[:notice] = 'Profile deleted successfully'
   else
     flash[:notice] = 'You have no permission to delete this profile'
   end


   redirect_to '/profile'
 end


  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.image = current_user.image
    @profile.github = current_user.url
    @profile.githubname = current_user.name
    if @profile.save
      redirect_to '/profile'
    else
      render 'new'
    end
  end

end
