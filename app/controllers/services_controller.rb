class ServicesController < ApplicationController
  def show
    @services = Service.where(category_id: params[:id])
  end

  def index
    @services = Service.all
  end
end
