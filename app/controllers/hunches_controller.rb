class HunchesController < ApplicationController
  def show
    @hunch = Hunch.find params[:id]
  end

  def index
  end


end
