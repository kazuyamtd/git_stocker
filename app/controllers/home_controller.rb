class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey, you forgot to enter a symbol"
    elsif
    
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "The Stock Doesn't exist"
        end
        
      end
    end
  end
  
  def about
  end
  
end
