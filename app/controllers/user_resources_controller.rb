class UserResourcesController < ApplicationController

    before_action :find_user_resource, only: [:show, :destroy]

    def index
        @user_resources = UserResource.all
        render json: @user_resources
    end

    def show
        render json: @user_resources
    end

    def new
        @user_resource = UserResource.create(event_params)
        render json: @user_resources
    end

    def new
        @user_resource = Event.new
        render json: @user_resources
    end

    def destroy
        render json: @user_resources
    end


    private

    def user_resource_params
        params.require(:user_resource).permit(:user_id, :resource_id)
    end

    def find_user_resource
        @user_resource = UserResource.find(params[:id])
    end

end
