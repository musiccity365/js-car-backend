class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: CarSerializer.new(cars, {include: [:origin]})
  end

  def show
    car = Car.find(params[:id])
    render json: CarSerializer.new(car)
  end

  def create
    car = Car.new(car_params)
    if car.save
      render json: CarSerializer.new(car)
    else
      render json: {error: "Something went wrong, your entry was not added!"}
    end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    render json: {message: "#{car.id} erased!"}
  end

  def update
    car = Car.find(params[:id])
    if car.update(car_params)
      render json: CarSerializer.new(car)
    else
      render json: {error: "Something went wrong, your entry was not updated!"}
    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :miles, :origin_id)
  end
end
