class PropertiesController < ApplicationController
    def create 
        @landlord = Landlord.new(landlord_params)
        if @landlord.save
          login!
          render json: {status: 200, landlord: @landlord}
        else
          render json: { status: 500, errors: @landlord.errors.full_messages}
        end
      end
end