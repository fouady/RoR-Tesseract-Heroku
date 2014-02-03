class TesseractPagesController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def run

  	puts "In Run Controller"

    jpg = Base64.decode64(params[:image])
    
    file = File.open("tmp/tessdir/sample.jpg",'wb')
  	file.write jpg
	  
    puts "Starting tesseract"
    %x(tesseract tmp/tessdir/sample.jpg tmp/tessdir/out)
    puts "Done with tesseract"
  
    file = File.open("tmp/tessdir/out.txt", "rb")
    contents = file.read
    
    %x(rm -Rf tmp/tessdir/*)
    
    render text: contents
  end
end
