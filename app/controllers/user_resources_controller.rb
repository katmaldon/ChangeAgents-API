class UserResourcesController < ApplicationController

    before_action :find_user_resources, only: [:show, :destroy]

    def index
        @user_resources = UserResource.all
    end

    def show
    end

    private

    def user_resource_params
        params.require(:user_resource).permit(:user_id, :resource_id)
    end

    def find_user_resource
        @user_resource = UserResource.find(params[:id])
    end

end
