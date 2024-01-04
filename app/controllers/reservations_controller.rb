class ReservationsController < ApplicationController
    before_action :authorize!, only: [:edit, :update, :destroy]
    
    def index
        @reservations = Reservation.all
    end

    def new
        @reservation = Reservation.new
        pp params
        @car = Car.find(params[:car_id])
    end

    def show
        @reservation = Reservation.find(params[:id])
    end

    def edit
        @reservation = Reservation.find(params[:id])

    end
      
    def create
        @reservation = Reservation.new(reservation_params)

        if @reservation.save
            redirect_to reservations_path, notice: "Reservation created successfully"
        else
            render :new, status: :unprocessable_entity, alert: "Something went wrong"
        end

    end

    private

    def reservation_params
        params.require(:reservation).permit( :user_id, :car_id, :pickup_date, :return_date, :total_price, :status)
    end

end