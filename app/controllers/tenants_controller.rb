class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end
  def show
    @tenant = Tenant.find(params[:id])
  end
  def new

  end
  def create

  end
  def edit

  end
  def update

  end
  def destroy

  end
end
