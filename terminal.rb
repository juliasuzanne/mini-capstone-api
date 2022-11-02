require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/all_products")

first = HTTP.get("http://localhost:3000/products")

first = first.parse(:json)

$name = first["name"]

table = TTY::Table[[$name]["b"]]

# puts table
