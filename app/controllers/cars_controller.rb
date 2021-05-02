class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(params[:car])
    if @car.save
      flash[:success] = 'Car successfully created'
      redirect_to @car
    else
      flash[:error] = 'Something went wrong'
      render :new
    end
  end

  def destroy
    car = Car.find(params[:id])
    if car.update(car_params)

    else

    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :miles, :origin_id)
  end
end
