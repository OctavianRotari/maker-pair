class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    profile_index_path
  end

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to profile_index_path, :notice => 'You need to authenticate before proceeding'
    end
  end

end
