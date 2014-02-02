class TesseractPagesController < ApplicationController
  def run
  	puts "In Run Controller"
    puts params[:image]
   	render "../assets/images/rails.png"
  end
end
