User.create!([
  {name: "Nelson", email: "nelson1214@test.com", password_digest: "$2a$12$KPp5D7DzTzwS5Cl2t9XvJu9.0tGDm4iqRb8ZPwKZos4k5RaTcYfDm", admin: false},
  {name: "Julia", email: "juliagrimes@test.com", password_digest: "$2a$12$vWu63Szu2K3rZ8EphaDqOu.FcAAc1z/Hi4obWQmZAk9qi3B042wFa", admin: true}
])
Supplier.create!([
  {name: "Tiny Arms", email: "test@test.com", phone_number: nil},
  {name: "Dinkin' Dongs", email: "coffee@test.com", phone_number: "800-800-8000"},
  {name: "Dream World", email: "worldofyourdreams@test.com", phone_number: "800090980980980912"},
  {name: "Lampshades", email: "Lampshades", phone_number: "617-900-9872"}
])
Product.create!([
  {name: "sad_mug", price: "100.0", description: "This mug is so sad, you can cry into it.", inventory: 1, supplier_id: 4},
  {name: "Lampshade", price: "110.0", description: "What can you do with this?", inventory: 3, supplier_id: 2},
  {name: "A box", price: "0.0", description: "It's big.", inventory: 555, supplier_id: 3},
  {name: "Something shiny", price: "1000.0", description: "It's too shiny to see what it is.", inventory: 1, supplier_id: 3},
  {name: "test", price: "1000.0", description: "It's too shiny to see what it is.", inventory: 12, supplier_id: 1},
  {name: "Something shiny", price: "10.0", description: "It's too shiny to see what it is.", inventory: 2, supplier_id: 1},
  {name: "Lampshade", price: "110.0", description: "What can you do with this?", inventory: 66, supplier_id: 2},
  {name: "Something shiny", price: "200.0", description: "It's too shiny to see what it is.", inventory: 1, supplier_id: 2},
  {name: "sad_mug", price: "100.0", description: "This mug is so sad, you can cry into it.", inventory: 3, supplier_id: 4},
  {name: "Something shiny", price: "10.0", description: "It's too shiny to see what it is.", inventory: 4, supplier_id: 3},
  {name: "Dark painting", price: "120.0", description: "A dark painting, it will not haunt you.", inventory: 2, supplier_id: 1},
  {name: "sad_mug", price: "0.0", description: "This mug is so sad, you can cry into it.", inventory: 20, supplier_id: 1},
  {name: "Something shiny", price: "1000.0", description: "It's too shiny to see what it is.", inventory: 1, supplier_id: 1},
  {name: "Lampshade", price: "110.0", description: "What can you do with this?", inventory: 24, supplier_id: 4},
  {name: "test", price: "20000.0", description: "It's too shiny to see what it is.", inventory: 2, supplier_id: 2}
])
Order.create!([
  {user_id: 1, product_id: 2, quantity: 2, subtotal: "10.01", tax: "1.0", total: "11.01"},
  {user_id: 1, product_id: 1, quantity: 2, subtotal: "10.01", tax: "1.0", total: "11.01"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: nil, tax: nil, total: "130.8"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: "141.6", tax: "10.8", total: "130.8"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: "141.6", tax: "10.8", total: "130.8"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: "141.6", tax: "10.8", total: "130.8"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: "141.6", tax: "10.8", total: "130.8"},
  {user_id: 2, product_id: 1, quantity: 2, subtotal: "240.0", tax: "21.6", total: "261.6"},
  {user_id: 2, product_id: 4, quantity: 1, subtotal: "200.0", tax: "18.0", total: "218.0"},
  {user_id: 2, product_id: 4, quantity: 10, subtotal: "2000.0", tax: "180.0", total: "2180.0"},
  {user_id: 2, product_id: 4, quantity: 10, subtotal: "2000.0", tax: "180.0", total: "2180.0"},
  {user_id: 1, product_id: 4, quantity: 10, subtotal: "2000.0", tax: "180.0", total: "2180.0"}
])
Image.create!([
  {product_id: 2, url: "https://www.ikea.com/us/en/images/products/faergklar-mug-matte-green__0986755_pe817319_s5.jpg", description: "Front view"},
  {product_id: 2, url: "https://assets.pbimgs.com/pbimgs/ab/images/dp/wcm/202219/0016/mason-stoneware-mugs-c.jpg", description: "Side view"},
  {product_id: 2, url: "https://m.media-amazon.com/images/I/51rA9kCjzTL.jpg", description: "Mug"},
  {product_id: 9, url: "https://i.etsystatic.com/17498104/r/il/a08b67/3056047679/il_1588xN.3056047679_6ijo.jpg", description: "It is what it is"},
  {product_id: 9, url: "https://i.etsystatic.com/17498104/r/il/a08b67/3056047679/il_1588xN.3056047679_6ijo.jpg", description: "It is what it is"},
  {product_id: 9, url: "https://v-cg.etsystatic.com/video/upload/ac_none,du_15,q_auto:good/4B286387-5396-48E8-94A0-FC3B7235EDDFL0001_i5wso8.mp4", description: "It is what it is"},
  {product_id: 9, url: "https://i.etsystatic.com/17498104/r/il/373407/3008335036/il_1588xN.3008335036_eqbt.jpg", description: "It is what it is"},
  {product_id: 9, url: "https://i.etsystatic.com/17498104/r/il/373407/3008335036/il_1588xN.3008335036_eqbt.jpg", description: "It is what it is"},
  {product_id: 9, url: "https://i.etsystatic.com/17498104/r/il/373407/3008335036/il_1588xN.3008335036_eqbt.jpg", description: "It is what it is"}
])
CategoryProduct.create!([
  {category_id: 1, product_id: 2},
  {category_id: 2, product_id: 4},
  {category_id: 2, product_id: 4},
  {category_id: 2, product_id: 4}
])
Category.create!([
  {name: "random"},
  {name: "Objects"},
  {name: "decor"}
])
