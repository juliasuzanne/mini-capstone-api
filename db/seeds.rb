Product.create!([
  { supplier_id: 1, name: "Something shiny", price: 10, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk4fyvmXGE-NP3xW7aYUuFwG4JNArRS5B5cViiBfxMqpN4ZDm68UbmXbMtOUpCpEEAF-I&usqp=CAU", description: "It's too shiny to see what it is." },
  { supplier_id: 1, name: "sad_mug", price: 100, image_url: "https://earthpigpottery.files.wordpress.com/2019/02/collapsed-pot.jpg", description: "This mug is so sad, you can cry into it." },
  { supplier_id: 1, name: "A box", price: 100, image_url: "https://m.media-amazon.com/images/I/51-9L697kGL._AC_SY780_.jpg", description: "It's big." },
  { supplier_id: 1, name: "Dark painting", price: 120, image_url: "https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/6a8e4a30696993.56b04596625ce.jpg", description: "A dark painting, it will not haunt you." },
])

Supplier.create!([
  { name: "Dinkin' Dongs", email: "coffee@test.com", phone_number: "800-800-8000" },
  { name: "Dream World", email: "worldofyourdreams@test.com", phone_number: "800090980980980912" },

])
