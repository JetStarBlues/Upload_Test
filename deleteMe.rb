#!/usr/bin/env ruby
	# print "What is your name?"
	# name = gets.chomp
	# puts "Hello #{name}!"

#To run, navigate to folder containing file. In cmd line, 'ruby [filename]'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.tested.com"
doc = Nokogiri::HTML(open(url))

puts doc.css("title").text	      #returns title of page (Tested-Tech)

doc.css("article").each do |article|
	title = article.css(".title").text
	author = article.css(".author").text
	puts "#{title} - #{author}"
end
