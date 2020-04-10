class ApplicationController < ActionController::Base

  # prevents rails from using its authenticty token bc we are using rails as API we need to prevent  this from happening
  skip_before_action :verify_authenticity_token

  
  helper_method :login!, :logged_in?, :current_landlord, :authorized_landlord?, :logout!

  def login! 
    session[:landlord_id] = @landlord.id
  end

  def logged_in?
    !!session[:landlord_id]
  end


  def current_landlord
    @current_landlord ||= Landlord.find(session[:landlord_id]) if session[:landlord_id]
  end

  def authorized_landlord?
    @landlord == current_landlord

  end


  def logout!
    session.clear
  end
end
