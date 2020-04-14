class SessionsController < ApplicationController

def create 
  @landlord = Landlord.find_by(email: session_params[:email])

  if @landlord && @landlord.authenticate(session_params[:password])
   
    login! 
   render json: {logged_in: true, landlord: @landlord, issues: @landlord.all_issues, tenants: @landlord.all_tenants, todos: @landlord.all_todos, properties: @landlord.properties} 


   
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
      landlord: current_landlord, 
      issues: current_landlord.all_issues, 
      tenants: current_landlord.all_tenants, 
      todos: current_landlord.all_todos, 
      properties: current_landlord.properties
    }
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
