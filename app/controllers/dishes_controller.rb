class DishesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @dish = current_user.dish.build(dish_params)
    if @user.save
      flash[:success] = "Dish Saved!"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def destroy
  end

  private
    params.require(:dish).permit(:content)
  end
end
