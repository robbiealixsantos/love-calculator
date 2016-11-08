require 'httparty'

helpers do

def love_matcher(first_name, second_name)
response = HTTParty.get("https://love-calculator.p.mashape.com/getPercentage?fname=#{first_name}&sname=#{second_name}",
  headers:{
    "X-Mashape-Key" => ENV["MASHAPE_KEY"],
    "Accept" => "application/json"
  })
  return response
end

def add_giphy
    mykey = ENV['GIPHY_KEY']
    response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=love&api_key=#{mykey}")
    return response["data"][rand(1..10)]["images"]["original"]["url"]
end


end