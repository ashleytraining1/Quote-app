class QuotesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
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
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def update
        quote = Quote.find(params[:id])
        quote.update(quote_params)
        render json: quote
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
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

def render_not_found_response
    render json: { error: "Quote not found" }, status: :not_found
end

end
