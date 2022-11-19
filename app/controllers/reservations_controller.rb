class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def bulk_create
    Reservation.import(params[:file])
    redirect_to action: 'index'
  end

  def import; end
end
