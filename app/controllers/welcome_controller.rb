class WelcomeController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  def index
    @current_user = current_user if current_user != nil
  end

end
