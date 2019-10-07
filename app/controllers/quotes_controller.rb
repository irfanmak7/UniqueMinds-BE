class QuotesController < ApplicationController

    def index
        @quotes = Quote.all

        render json: @quotes
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

    def quote_params
        params.require(:quote).permit(:content, :author)
    end

end