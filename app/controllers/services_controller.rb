class ServicesController < ApplicationController
  def show
    @services = Service.all
    @service = Service.find(params[:id])
  end


  def index
    @services = Service.all
  end
end
