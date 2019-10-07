class UsersController < ApplicationController

    def index

    end

    def show

    end

    def create

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