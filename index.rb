require 'rubygems'
require 'sinatra'
require 'net/http'
require 'open-uri'

get '/' do

  url = URI.parse('http://www.example.com/index.html')
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
  }

  res.body
end

get '/s' do
  URI.parse("https://google.com").read
end
