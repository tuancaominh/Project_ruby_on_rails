class CryptocurrencieController < ApplicationController
	require 'net/http'
	require 'rest_client'
	require 'cryptocompare'
	require 'coinmarketcap'
	require "openssl"
  def home
  end
  # get detail of CoinMarketCap from Cryptocompare API
def getdetail
	begin
	prm=params[:id]
	if prm.empty?
		render :text => 'value is null'
		return;
	end
	response=Cryptocompare::Price.full(''+prm+'', 'USD')
	#editjson={''+prm+''=> response}
	render :json => response
	rescue Exception => e
	 render :json => e.message
	end
end
#get from CoinMarketCap JSON API  with 'https://api.coinmarketcap.com/v1/ticker/?convert'
 def getdata
	 begin
		  prm=params[:id]
		  if prm.empty?
		  	render :text =>'value is null'
		  return ;
		  end
	  	 #@response=Cryptocompare::Price.find('USD', 'EUR')
	  	 url = 'https://api.coinmarketcap.com/v1/ticker/?convert='+prm+''
		response = RestClient.get(url)
	 	@data='{"data":'+response.body+'}'
	  	render :json =>@data
	rescue TypeError => e
	  render :json =>e.message
	end
 end
#load from CoinMarketCap JSON API 
def load
	 begin
	  	 #@response=Cryptocompare::Price.find('USD', 'EUR')
	  	 url = 'https://api.coinmarketcap.com/v1/ticker/'
		response = RestClient.get(url)
	 	@data='{"data":'+response.body+'}'
	  	render :json =>@data
	rescue TypeError => e
	  render :json =>e.message
	end
	
end
end
