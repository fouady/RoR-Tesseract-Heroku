class TesseractPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def run
  	puts "In Run Controller"
    puts params[:image]
    jpg = Base64.decode64(params[:image])
    File.open("testing.jpg",'wb') do |f|
  		f.write jpg
	end
	str = %x(which tesseract)
   	render text: str
  end
end
