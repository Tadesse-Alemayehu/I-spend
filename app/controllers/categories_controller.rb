class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories=current_user.categories.order(created_at: :DESC)
  end

  def new
  end

  def create
  end

  def destroy
  end
end
