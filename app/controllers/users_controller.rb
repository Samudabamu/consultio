class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

   user = User.new(user_params)
   if params[:file].present?
     req = Cloudinary::Uploader.upload(params[:file])
     user.image = req["public_id"]
   end
   user.save
   redirect_to user_path user
  end

  def edit
    @user = User.find params[:id]

  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      user.image = req["public_id"]
    end
    user.update_attributes(user_params)
    user.save

    redirect_to user_path(user)
  end

  def show
    @user = User.find params[:id]

  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  #securtity
  end

end
