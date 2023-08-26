class ServicesController < ApplicationController
  def show
    @service = service.find(params[:id])
  end

  def index
    @services = Service.all
  end
end
