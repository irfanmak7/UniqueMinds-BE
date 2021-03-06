class Api::V1::UsersController < ApplicationController

    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all

        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            #session[user_id] = @user.id
            render json: @user
        else
            render json: {status: 500, message: 'User cannot be created'}
        end
    end

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: {status: 500, message: 'User cannot be updated'}
        end
    end

    def destroy
        if @user.destroy
            render json: @user.id
        else
            render json: {status: 500, message: 'User cannot be deleted'}
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end