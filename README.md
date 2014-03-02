# RoR - Tesseract OCR - Heroku

This is a simple server developed in Ruby on Rails, that receives images in Base64 format, decodes them and runs Tesseract OCR on them. The OCR binaries shall be deployed using the [Tesseract Heroku buildpack] (https://github.com/fouady/heroku-buildpack-tesseract)

The project works fine on Heroku server (and possibly other unix based servers). It has not been tested on other servers.

## License
MIT License. Copyright 2014 Fouad Yaseen.
