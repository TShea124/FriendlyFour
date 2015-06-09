class TeetimesController < ApplicationController
	def show
		@teetimes = Teetime.all
		@teetime = Teetime.find_by_id(params[:id])
		@reservation = Reservation.new
		@reservations = Reservation.all
		@user = User.all
		# binding.pry
	end

end
