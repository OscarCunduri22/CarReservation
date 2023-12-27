class CarsController < ApplicationController
  def index
    @cars = Car.all.with_attached_images
  end

  def show
    id = params[:id]
    @car_id = id
    car
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path, notice: t('.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    car
  end

  def update
    if car.update(car_params)
      redirect_to cars_path, notice: t('.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if car.destroy
      redirect_to cars_path, notice: t('.destroyed'), status: :see_other
    else
      redirect_to cars_path, notice: t('.error'), status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:marca, :modelo, :transmision, :anio, :capacidad, :preciodiario, images: [])
  end

  def car
    @car = Car.find(params[:id])
  end
end