require "http"

response = HTTP.get("http://127.0.0.1:3000/api/get_movies")

puts response
