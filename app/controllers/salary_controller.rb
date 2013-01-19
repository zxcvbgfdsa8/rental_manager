class SalaryController < ApplicationController
  def ad_type
    params[:type].constantize
  end
end
