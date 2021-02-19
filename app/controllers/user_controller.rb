class UserController < ApplicationController
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        # logic to create a user
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        # logic to update a users information
    end

    def destroy
        # logic to destroy a user and their associated resources
    end
end
