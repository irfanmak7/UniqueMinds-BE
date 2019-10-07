class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            #session[user_id] = @user.id
            render json: @user
        else
            render json: {status 500, message: 'User cannot be created'}
    end

    def update

    end

    def destroy

    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end