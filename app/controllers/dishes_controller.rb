class DishesController < ApplicationController
  layout "dish"
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.all
  end

  def show; end

  def new
    @dish = Dish.new
  end

  def edit; end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish
    else
      render 'new'
    end
  end

  def update
    if @dish.update(dish_params)
      redirect_to @dish
    else
      render 'edit'
    end
  end

  def destroy
    @dish.destroy

    redirect_to dishes_path
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :description, :total, :value_calorie, :avatar, ingredient_ids: [])
  end
end
