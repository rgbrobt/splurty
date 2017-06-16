class QuotesController < ApplicationController
  def index
  @quote = Quote.order("RANDOM()").first
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>Oops! You broke it.</strong> Just kidding! Try entering your quote again.'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def quote_params
      params.require(:quote).permit(:saying1, :punchline, :author)
  end
end

