class QuotesController < ApplicationController
    def index
        quotes = Quote.all
        render json: quotes
    end

    def show
        quote = Quote.find(params[:id])
        render json: quote
    end

    def create
        quote = Quote.create(quote_params) 
        render json: quote, status: :created
    end

    def update
        quote = Quote.find(params[:id])
        quote.update(description: params[:description])
    end

   def destroy 
    quote = Quote.find(params[:id]) 
    quote.destroy
    head :no_content
   end

private

def quote_params
    params.permit(:category, :description)
end

end
