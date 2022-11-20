class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def bulk_create
    if params[:file]

      Reservation.import(params[:file])
      redirect_to action: 'index'
    else
      render :import, status: :unprocessable_entity
    end
  end

  def import; end


end
