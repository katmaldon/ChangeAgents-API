class ResourcesController < ApplicationController

    before_action :find_resource, only: [:show, :destroy]

    def index
        @resources = Resource.all
    end

    def show
    end

    def create
        @resource = Resource.create(resource_params)
        # if resource.valid?
        #     session[:resource_id] = resource.id
        #     redirect_to resource_path(resource)
        # else
        #     flash[:errors] = resource.errors.full_messages
        #     redirect_to new_resource_path
        # end
    end

    def new
        @resource = Resource.new
    end

    def destroy
        @resource.destroy
    end

    private

    def resource_params
        params.require(:resource).permit(:title, :location, :image, :zip, :url, :info)
    end

    def find_resource
        @resource = Resource.find(params[:id])
        end


end
