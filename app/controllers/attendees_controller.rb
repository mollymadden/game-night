class AttendeesController < ApplicationController
  http_basic_authenticate_with name: "molly", password: "password", except: [:index, :new, :create]

  def index
    @attendees = Attendee.all
  end
 
  def show
    @attendee = Attendee.find(params[:id])
  end
 
  def new
    @attendee = Attendee.new
  end
 
  def edit
    @attendee = Attendee.find(params[:id])
  end
 
  def create
    @attendee = Attendee.new(attendee_params)
 
    if @attendee.save
      redirect_to attendees_thanks_path
    else
      render 'new'
    end
  end
 
  def update
    @attendee = Attendee.find(params[:id])
 
    if @attendee.update(attendee_params)
      redirect_to @attendee
    else
      render 'edit'
    end
  end
 
  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy
 
    redirect_to attendees_path
  end
 
  private
    def attendee_params
      params.require(:attendee).permit(:name, :diet, :contribution, :message)
    end
end