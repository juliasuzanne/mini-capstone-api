require "http"
require "tty-table"
require "tty-prompt"

prompt = TTY::Prompt.new

page = prompt.select("Which page would you like to visit?", %w(products/1 products/2 products/3 products/4))

response = HTTP.get("http://localhost:3000/#{page}")

response = response.parse(:json)

name = response["name"]
price = response["price"]
image = response["image_url"]
des = response["description"]

table = TTY::Table[["Name", "Price", "Image", "Description"], [name, "$ #{price}", image, des]]

puts table.render(:ascii)

# puts table
