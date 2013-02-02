class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end
  def show
    @tenant = Tenant.find(params[:id])
  end
  def new
    @tenant = Tenant.new
    2.times{ @tenant.phone_numbers.build }
  end
  def create
    @tenant = Tenant.new(params[:tenant])
    if @tenant.save
      flash[:successs] = "New Tenant, #{@tenant.first_name} Created"
      redirect_to @tenant
    else
      render 'new'
    end
  end
  def edit

  end
  def update

  end
  def destroy

  end
end
