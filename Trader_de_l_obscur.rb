require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_curencies_of_CryptoCurrency
		names = Array.new
		prices = Array.new
		page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
		names = page.css('td.no-wrap.currency-name')
		prices = page.css('a.price')
		#for i in (0..names.length-1)
			#names[i] = names[i].text
			#names[k] = page.css('a.price').text
		#}
		#end
		names.each{|k, name|
			names[k] = name.text
		}
		puts names
		#puts names[4].text
		#puts prices
	
	                                                                                       
end
#td.no-wrap.currency-name
#a.price
get_the_curencies_of_CryptoCurrency