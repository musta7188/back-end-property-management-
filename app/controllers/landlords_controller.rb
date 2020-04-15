class LandlordsController < ApplicationController



  def index 
    @landlords = Landlord.all 
    if @landlords
      render json: {landlords: @landlords}
    else 
      render json: {status: 500, errors: ['no users found']}
  end
end


def show 
  @landlord = Landlord.find(params[:id])
  if @landlord 
    render json: {landlord: @landlord, issues: @landlord.issues, tenants: @landlord.tenants, todos: @landlord.todos, properties: @landlord.properties} 


  else
    render json: {status: 500, errors: ['user not found']}
  end
end

def create 
  @landlord = Landlord.new(landlord_params)
  if @landlord.save
    login!
    render json: {status: 200, landlord: @landlord}
  else
    render json: { status: 500, errors: @landlord.errors.full_messages}
  end
end

private

def landlord_params
  params.require(:landlord).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end


end
