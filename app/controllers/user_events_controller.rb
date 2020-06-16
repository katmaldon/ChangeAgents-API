class UserEventsController < ApplicationController

    before_action :find_user_event, only: [:show, :destroy]

    def index
        @user_events = UserEvent.all
        render json: @user_events
    end

    def show
        @user_event = UserEvent.find(params[:id])
        render json: @user_event
    end

    def new
        @user_events = UserEvent.create(event_params)
        render json: @user_events
    end

    def destroy
        render json: @user_events
    end


    private

    def user_event_params
        params.require(:user_event).permit(:user_id, :event_id)
    end

    def find_user_event
        @user_event = UserEvent.find(params[:id])
    end

end
