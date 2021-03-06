class PropertiesController < ApplicationController
    def create 
        @property = Property.new(property_params)
        if @property.save
          
          render json: {status: 200, property: @property}
        else
          render json: { status: 500, errors: @property.errors.full_messages}
        end
    end

    def index 
        @properties = Property.all 
        if @properties
          render json: {properties: @properties}
        else 
          render json: {status: 500, errors: ['no properties found']}
      end
    end

    def show
      property = Property.find(params[:id])
      render json: {
        property:property, 
        tenants: property.tenants,
        issues: property.issues,
        todos: property.todos},status: :ok
    end

    def destroy
      @property = Property.find(params[:id])
      @property.destroy
      render json: {status: 'SUCCESS', message:'Deleted property', data:@property},status: :ok
    end

    private

    def property_params
    params.require(:property).permit(:landlord_id, :address, :rooms)
    end
end