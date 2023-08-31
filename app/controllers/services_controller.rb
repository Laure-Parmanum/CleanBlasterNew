class ServicesController < ApplicationController
  def show
    @services = Service.where(category_id: params[:id]).where.not(user_id: current_user.id)
  end


  def index
    @services = Service.all
  end
end
