class LineItemsController < ApplicationController
  def new

  end

  def create


    cart = Cart.find_or_create_by(user_id:@current_user.id)

    # get all line items for cart
    # line_items = cart.line_items

    # check if any of hunch_ids in the cart match the hunch_id in params[:hunch_id]

    # LineItem.where(cart_id: 16)

    line_items = LineItem.where(cart_id: cart.id)


     if line_items.where(hunch_id: params[:hunch_id]).present?

          line_itemz = line_items.where(hunch_id: params[:hunch_id]).first
          line_itemz[:quantity] += params[:line_item][:quantity].to_i
          line_itemz.save
        else
          new_line = LineItem.new(line_item_params)
          new_line.hunch_id = params[:hunch_id]
          new_line.cart_id = cart[:id]
          new_line.save
     end

    # if there's a match, just update the line_item with new quantity

    # no match, create new line item (need params[:hunch_id] and cart_id)

    #
    #
    # if params[:line_item_id].present?
    #   @line_item = LineItem.find(params[:cart_id]).find(params[:hunch_id])
    # else
    #   @line_item = LineItem.new line_item_params
    #   item.cart = cart
    #   item.hunch_id = params[:hunch_id]
    #   item.save
    # end
    #

    # cart = Cart.find_or_create_by(user: @current_user)
    #
    # item = LineItem.new line_item_params
    # item.cart = cart
    # item.hunch_id = params[:hunch_id]
    # item.save

    # Add a new line item to our existing cart, via the line_items association
    # cart.line_items.new line_item_params

    redirect_to cart_path   # '/cart'

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

  def line_item_params
    params.require(:line_item).permit(:quantity)

  end
end
