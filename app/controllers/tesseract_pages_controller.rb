class TesseractPagesController < ApplicationController
  def run
  	puts "In Run Controller"
   	render text: "testing"
  end
end
