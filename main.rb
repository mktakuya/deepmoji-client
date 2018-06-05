require 'faraday'
require 'json'

base_url = 'https://deepmoji.mit.edu/api/'
message = "Cheap and reasonable price though I was expecting better. "
query = URI.encode("?q=#{message}")

response = Faraday.get(base_url + query)
json = JSON.parse(response.body)

json['scores'].each_with_index do |item, i|
  if item != 0
    puts i
  end
end
