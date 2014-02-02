class TesseractPagesController < ApplicationController
  def run
  	puts "In Run Controller"
    puts params[:image]
   	render text: params[:image]
  end
end
