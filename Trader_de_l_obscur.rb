require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_curencies_of_CryptoCurrency
	names = Array.new 
	names_text = Array.new
	prices = Array.new 
	prices_text = Array.new
	names_with_price = Hash.new

	page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
	names = page.css('td.no-wrap.currency-name')
	names.each {|name| names_text.push(name.text.gsub(" ",""))}
	prices = page.css('a.price')
	prices.each { |price| prices_text.push(price.text)}
	
	for i in (0..names_text.length-1)
		names_with_price[names_text[i]] = prices_text[i]
	end

	return names_with_price                                                                  
end

while true
	puts get_the_curencies_of_CryptoCurrency
	sleep 3600
end
