class UserUserEventsController < ApplicationController


    before_action :find_user_events, only: [:show, :destroy]

    def index
        @user_events = UserEvent.all
    end

    def show
    end

    private

    def user_event_params
        params.require(:user_event).permit(:user_id, :event_id)
    end

    def find_user_event
        @user_event = UserEvent.find(params[:id])
    end


end
