class UsersController < ApplicationController
  def index
  redirect_to user_categories_path(user_id: current_user) if user_signed_in?
  end
  def show
   if user_signed_in?
    redirect_to user_categories_path(user_id: current_user), notice: "Welcome! You have signed up successfully."
   else
    render :index
   end
  end
end
