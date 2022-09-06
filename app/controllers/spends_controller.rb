class SpendsController < ApplicationController
  before_action :authenticate_user!
  def index
    @category=Category.find params[:category_id]
    redirect_to users_path unless can? :read, @category

    @transactions=@category.spends.order(created_at: :DESC)
  end

  def new
    @new_transaction=Spend.new
    @categories=current_user.categories.order(created_at: :DESC)
  end

  def create
  end

  def destroy
  end
  private
end
