class ReservationsController < ApplicationController
	
	def create
	   @reservation = Reservation.new(reservations_params)
    if @reservation.save
      redirect_to "/courses"
    else
      redirect_to "/"
    end
  end
	
	private
    def reservations_params
      params.require(:reservation).permit(:name, :comments, :teetime_id)
    end
end
