class SpendsController < ApplicationController
  before_action :authenticate_user!
  def index
    @category = Category.find params[:category_id]
    redirect_to users_path unless can? :read, @category

    @transactions = @category.spends.order(created_at: :DESC)
  end

  def new
    @new_transaction = Spend.new
    @categories = current_user.categories.order(created_at: :DESC)
  end

  def create
    par = transaction_params
    puts 'params are'
    unless params[:category]
      redirect_to new_user_spend_path(user_id: current_user), notice: 'you have to set atleast one category'
      return
    end
    spend = Spend.new(name: par[:name], amount: par[:amount], user: current_user)
    if spend.save
      params[:category][:selects].each do |id|
        CategorySpend.create(spend:, category: Category.find(id))
      end
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:spend).permit(:name, :amount)
  end
end
