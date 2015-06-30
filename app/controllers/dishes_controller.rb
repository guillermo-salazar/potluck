class DishesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :new]
  before_action :set_dish, only: [:edit, :update, :destroy]


  def create
    @dish = current_user.dishes.build(dish_params)
    @dishes = current_user.dishes
    if @dish.save

      flash[:success] = "Dish Saved!"
      # format.html {redirect_to root_url}
      # format.js
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def new
    @dish = Dish.new
  end

  def destroy
  end

  def show
    @dish = current_user.dishes.find_by(params[:dish_id])
  end

  private
  def dish_params
    params.require(:dish).permit(:description, :name, :serving, :user_id)
  end
end
