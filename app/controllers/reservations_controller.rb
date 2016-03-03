class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def new
    @reservation = Reservation.new
  end
  def create
    @datetime = parseTime

    @reservation = Reservation.new(params.require(:reservation).permit(:exam_id, :client_first_name, :client_last_name))

    # if selected date is in the past, do not save and reload form
    if @datetime.to_i < Time.now.to_i  
      render 'new'
    else  
      @reservation.datetime = @datetime
      @reservation.score = 0  # exam score at zero before it is taken

      @reservation.save
      redirect_to controller: 'welcome'
    end
  end
  private
    def parseTime
      Time.new(params[:reservation]["datetime(1i)"].to_i,
               params[:reservation]["datetime(2i)"].to_i, 
               params[:reservation]["datetime(3i)"].to_i, 
               params[:reservation]["datetime(4i)"].to_i,
               params[:reservation]["datetime(5i)"].to_i)
    end
end