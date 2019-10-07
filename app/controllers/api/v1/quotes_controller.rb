class QuotesController < ApplicationController

    def index
        @quotes = Quote.all

        render json: @quotes
    end

    def show
        @quote = Quote.find(params[:id])

        render json: @quote
    end

    def create
        @quote = Quote.new(quote_params)

        if @quote.save
            render json: @quote
        else
            render json: {status: 500, message: 'Quote cannot be created'}
        end
    end

    def update
        @quote = Quote.find(params[:id])

        if @quote.update(quote_params)
            render json: @quote
        else
            render json: {status: 500, message: 'Quote cannot be updated'}
        end
    end

    def destroy
        @quote = Quote.find(params[:id])

        if @quote.destroy
            render json: @quote.id
        else
            render json: {status: 500, message: 'Quote cannot be deleted'}
        end
    end

    private

    def quote_params
        params.require(:quote).permit(:content, :author)
    end

end