class EventsController < ApplicationController

    before_action :find_event, only: [:show, :destroy]

    def index
        @events = Event.all
    end

    def show
    end

    def create
        @event = Event.create(event_params)
        # if event.valid?
        #     session[:event_id] = event.id
        #     redirect_to event_path(event)
        # else
        #     flash[:errors] = event.errors.full_messages
        #     redirect_to new_event_path
        # end
    end

    def new
        @event = Event.new
    end

    def destroy
        @event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:title, :location, :image, :zip, :date, :time, :url, :info)
    end

    def find_event
        @event = Event.find(params[:id])
      end

end
