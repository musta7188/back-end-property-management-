class SessionsController < ApplicationController

def create 
  @landlord = Landlord.find_by(email: session_params[:email])

  if @landlord && @landlord.authenticate(session_params[:password])
   
    login! 
    render json: {logged_in: true, landlord: @landlord}, include: :properties


   
  else
    render json: {
      status: 401,
      errors: ["no such landlord", 'verify credentials and try again or signup']
    }

  end

end

def is_logged_in? 
  
  if logged_in? && current_landlord
    render json: {
      logged_in: true,
      landlord: current_landlord
    }, include: :properties
  else
    render json: {
      logged_in: false,
      message: 'no such landlord'
    }
  end
end

def destroy 
  logout!
  render json: {
    status: 200,
    logged_out: true
  }
end

private

def session_params
  params.require(:landlord).permit(:email, :password)
end


end
