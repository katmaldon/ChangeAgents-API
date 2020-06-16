class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]

    def index
        @users = User.all
    end

    def show
    end

    def create
        @user = User.create(user_params)
        # if User.valid?
        #     session[:user_id] = User.id
        #     redirect_to user_path(user)
        # else
        #     flash[:errors] = User.errors.full_messages
        #     redirect_to new_user_path
        # end
    end

    def new
        @user = User.new
    end

    def destroy
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:title, :location, :image, :zip, :url, :info)
    end

    def find_user
        @user = User.find(params[:id])
      end

end
