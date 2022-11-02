require "http"
require "tty-table"
require "tty-prompt"

prompt = TTY::Prompt.new

page = prompt.select("Which page would you like to visit?", %w(products products/:id))

response = HTTP.get("http://localhost:3000/#{page}")

response = response.parse(:json)
first = first.parse(:json)

name = first["name"]
price = first["price"]
image = first["image_url"]
des = first["description"]

name2 = response[1]["name"]
price2 = response[1]["price"]
image2 = response[1]["image_url"]
des2 = response[1]["description"]

table = TTY::Table[["Name", "Price", "Image", "Description"], [name, "$ #{price}", image, des], [name2, "$ #{price2}", image2, des2]]

puts table.render(:ascii)

# puts table
