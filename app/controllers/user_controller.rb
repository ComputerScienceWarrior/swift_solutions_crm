class UserController < ApplicationController
    before_action :find_user, only: [:index, :show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to login_path
        else 
            render :new
        end
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :email, :company_id)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
