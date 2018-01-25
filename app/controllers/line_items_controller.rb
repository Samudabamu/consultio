class LineItemsController < ApplicationController
  def new
  end

  def create

      Cart.find_or_create_by(user_id:@current_user)

    # quantity = params[:line_item][:quantity]

  
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def line_item params
    # let hunch_id, cart_id and qty through
  end
end
