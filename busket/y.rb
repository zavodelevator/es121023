require 'net/http'
require 'uri'
require 'net/https'

url = URI.parse('https://youcontrol.com.ua/search/?q=42758574')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new(url.request_uri)  # Include query parameters in the request

response = http.request(request)

if response.code.to_i == 302
  # If it's a redirect, follow it
  new_location = response['location']
  new_uri = URI.parse(new_location)
  
  # You might want to handle relative URLs
  new_uri = URI.join(url, new_location) unless new_uri.scheme
  
  new_request = Net::HTTP::Get.new(new_uri.request_uri)
  new_response = http.request(new_request)

  puts "Redirected Response code: #{new_response.code}"
  puts "Redirected Response body: #{new_response.body}"
else
  puts "Response code: #{response.code}"
  puts "Response body: #{response.body}"
end