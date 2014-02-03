class TesseractPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def run

  	puts "In Run Controller"

    jpg = Base64.decode64(params[:image])
    
    file = File.open("tessdir/sample.jpg",'wb')
  	file.write jpg
	  
    puts "Starting tesseract"
    %x(tesseract tessdir/sample.jpg tessdir/out)
    puts "Done with tesseract"
  
    file = File.open("tessdir/out.txt", "rb")
    contents = file.read
    
    %x(rm -Rf tessdir/*)
    
    render text: contents
  end
end
