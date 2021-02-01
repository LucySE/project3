class BookingsController < ApplicationController

    def show
      @booking = booking.find(params[:id])

    end

end
