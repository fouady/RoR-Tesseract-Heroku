class TesseractPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def run
  	puts "In Run Controller"
    puts params[:image]
    jpg = Base64.decode64(params[:image])
    #File.open("ocr/sample.jpg",'wb') do |f|
  	#	f.write jpg
	  #end
	#str = %x(./ocr/bin/tesseract ocr/sample.jpg ocr/out)
  #str = %x(./ocr/bin/tesseract --version)
  %x(mkdir test123)
  str = %x(ls)
   	render text: str
  end
end
