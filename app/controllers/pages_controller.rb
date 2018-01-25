class PagesController < ApplicationController

  def homepage
    @categories = Category.all
    # raise 'hell'


  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
