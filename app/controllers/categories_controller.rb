class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories=current_user.categories.order(created_at: :DESC)
  end

  def new
    @new_category=Category.new
  end

  def create
    par=strong_category
    new_category=Category.new(user: current_user, name: par[:name], icon: par[:icon])
    if new_category.save
      redirect_to users_path
    else render :new
    end
  end

  private
  # strong params
  def strong_category
    params.require(:category).permit(:name, :icon)
  end
end
