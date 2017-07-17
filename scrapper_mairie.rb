require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage(file)
	mail = []
	listed = Hash.new
	for i in (0..file.length-1)
    link = "http://annuaire-des-mairies.com/95/" + file[i] + ".html"
    puts link
		page = Nokogiri::HTML(open(link))
		email = page.css('table tr td table tr td table tr td table tr td.style27 p.Style22')[5].text	
		listed[file[i]] = email
	end
	return listed                                                                                               
end



def get_all_the_urls_of_val_doise_townhalls(file)
	page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	 page.css('a.lientxt').each {|city| city = city.text 
		file.push(city.gsub(" ","-").downcase)
	}
	return file
end

file = []
Give_to_the_CEO = Hash.new
file = get_all_the_urls_of_val_doise_townhalls(file)
puts Give_to_the_CEO = get_the_email_of_a_townhal_from_its_webpage(file)




