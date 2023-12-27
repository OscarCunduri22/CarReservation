class CarsController < ApplicationController
    def index 
        @cars = Car.all
    end

    def show
        id = params[:id]
        @car_id = id
        @car = Car.find(id)
    end

    def new
        @car = Car.new
    end

    def create 
        @car = Car.new(car_params)
        if @car.save
            redirect_to cars_path, notice: "El registro fue creado con éxito"
        else
            render :new, status: :unprocessable_entity
        end
        pp @car
    end


    private
    def car_params
        params.require(:car).permit(:marca, :modelo, :transmision, :anio, :capacidad, :preciodiario)
    end
end