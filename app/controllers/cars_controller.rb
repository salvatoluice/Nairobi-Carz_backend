class CarsController < ApplicationController
    def index
        cars = Car.all
        render json: cars
    end

    def create
        car = Car.create(car_params)
        render json: car, status: :created
    end

    def show
        cars = Car.find(params[:id])
        render json: cars
    end

    def update
        car = Car.find(params[:id])
        car.update(car_params)
        render json: car
    end

    def destroy
        car = Car.find(params[:id])
        if car
            car.destroy
            head :no_content
        else
            render json:{error:"car not found"}, status: :not_found
        end
    end

    private
    def car_params
        params.permit(:brand, :rating, :car_name, :imgUrl, :model, :price, :speed, :gps, :seatType, :automatic, :description)
    end
end
