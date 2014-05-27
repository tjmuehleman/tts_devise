class WelcomeController < ApplicationController
	
require 'open-uri'
require 'json'

  def home
	@result = JSON.parse(open("http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus").read)
	  	
  end

  def samplejson
	#@result = JSON.parse(open("http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus").read)
	@results = JSON.parse(open("http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus").read)

  end


  def about
  end

  def ajax

  end
end
