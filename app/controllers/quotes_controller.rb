class QuotesController < ApplicationController
  def index
  end
end

def index
  @quote = Quote.first
end