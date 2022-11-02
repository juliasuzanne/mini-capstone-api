require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/all_products")

first = HTTP.get("http://localhost:3000/products")

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
