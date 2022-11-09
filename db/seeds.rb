# Product.create!([
#   { supplier_id: 1, name: "Something shiny", price: 10, description: "It's too shiny to see what it is." },
#   { supplier_id: 1, name: "sad_mug", price: 100, description: "This mug is so sad, you can cry into it." },
#   { supplier_id: 1, name: "A box", price: 100, description: "It's big." },
#   { supplier_id: 1, name: "Dark painting", price: 120, description: "A dark painting, it will not haunt you." },
# ])

# image_url: "https://m.media-amazon.com/images/I/51-9L697kGL._AC_SY780_.jpg"
# image_url: "https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/6a8e4a30696993.56b04596625ce.jpg",
# image_url: "https://earthpigpottery.files.wordpress.com/2019/02/collapsed-pot.jpg",
# image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk4fyvmXGE-NP3xW7aYUuFwG4JNArRS5B5cViiBfxMqpN4ZDm68UbmXbMtOUpCpEEAF-I&usqp=CAU",

# Supplier.create!([
#   { name: "Dinkin' Dongs", email: "coffee@test.com", phone_number: "800-800-8000" },
#   { name: "Dream World", email: "worldofyourdreams@test.com", phone_number: "800090980980980912" },

# ])

Image.create!([
  { url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F31RwZPpkmmL._AC_SY350_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com%2FHouse-Card-Paper-160-GSM%2Fdp%2FB016Q4PDZU&tbnid=iKbw3vl8IkWiQM&vet=12ahUKEwj-t-DbjaD7AhVYn3IEHUA2AHAQMygAegUIARCTAg..i&docid=U4CUSykbsH9frM&w=463&h=244&q=paper&ved=2ahUKEwj-t-DbjaD7AhVYn3IEHUA2AHAQMygAegUIARCTAg", description: "Front view", product_id: 2 },
  { url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.lakeshorelearning.com%2Fproducts%2Farts-crafts%2Fpaper%2Fconstruction-paper%2Fp%2FTA50%2F&psig=AOvVaw3-PmGJCdjdJA1USsL2ZtDb&ust=1668049221418000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCJC8styNoPsCFQAAAAAdAAAAABAG", description: "Side view", product_id: 2 },
])
