class TenantsController < ApplicationController
    def create 
        @tenant = Tenant.new(tenant_params)
        if @tenant.save
          
          render json: {status: 200, tenant: @tenant}
        else
          render json: { status: 500, errors: @tenant.errors.full_messages}
        end
    end

    def index 
        @tenants = Tenant.all 
        if @tenants
          render json: {tenants: @tenants}
        else 
          render json: {status: 500, errors: ['no tenants found']}
      end
    end

    def show
      tenant = Tenant.find(params[:id])
      render json: {
        tenant:tenant
      }
    end

    def destroy
      @tenant = Tenant.find(params[:id])
      @tenant.destroy
      render json: {status: 'SUCCESS', message:'Deleted tenant', data:@tenant},status: :ok
    end

    private

    def tenant_params
    params.require(:tenant).permit(:first_name, :last_name, :email, :dob, :property_id)
    end
end