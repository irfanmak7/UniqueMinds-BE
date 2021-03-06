class Api::V1::QuotesController < ApplicationController

    before_action :set_quote, only: [:show, :update, :destroy]

    # GET /quotes
    def index
        @quotes = Quote.all

        render json: @quotes
    end

    # GET /quotes/1
    def show
        render json: @quote
    end

    # POST /quotes
    def create
        @quote = Quote.new(quote_params)

        if @quote.save
            render json: @quote
        else
            render json: {status: 500, message: 'Quote cannot be created'}
        end
    end

    # PATCH/PUT /quotes/1
    def update
        if @quote.update(quote_params)
            render json: @quote
        else
            render json: {status: 500, message: 'Quote cannot be updated'}
        end
    end

    # DELETE /quotes/1
    def destroy
        if @quote.destroy
            render json: @quote.id
        else
            render json: {status: 500, message: 'Quote cannot be deleted'}
        end
    end

    private

    def set_quote
        @quote = Quote.find(params[:id])
    end

    def quote_params
        params.require(:quote).permit(:content, :author)
    end

end