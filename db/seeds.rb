# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

  CartItem.destroy_all
  Review.destroy_all
  User.destroy_all
  Product.destroy_all
  
  puts "Creating users..."
  puts "Creating products..."
  puts "Creating reviews..."
  ApplicationRecord.connection.reset_pk_sequence!('users')
  ApplicationRecord.connection.reset_pk_sequence!('products')
  ApplicationRecord.connection.reset_pk_sequence!('reviews')



  shuhei = User.create!(email: "wipeout@mail.com", name: "Shuhei", password: 'password')
  brendan = User.create!(email: "bMoney@mail.com", name: "Brendan", password: 'password')
  mitch = User.create!(email: "meetch@mail.com", name: "Mitch J.", password: 'password')
  yan = User.create!(email: "yannyboi@mail.com", name: "Yancito", password: 'password')
  michael = User.create!(email: "aMansMan@mail.com", name: "Michael", password: 'password')
  caryl = User.create!(email: "cMoney@mail.com", name: "Caryl", password: 'password')
  fifi = User.create!(email: "cssGoat@mail.com", name: "Fifi", password: 'password')
  shaun = User.create!(email: "sWhite@mail.com", name: "Shaun", password: 'password')


  #mens
  product1 = Product.create!({
    name: "Yeti Snowboard Jacket Men",
    price: 169.00 ,
    description: "The Yeti is a mythical, elusive, mysterious beast... but there is one thing we know about it — that it's the best dang riding hoodie in the mountains! If you're looking for a reliable, cosy, comfy, and gosh-darn steezy softshell to take from the park to the pow, then hunt yourself down one of these and embrace the monster within. With lots of slick touches to make your day at the resort legendary, the Yeti is the only choice for your next snowy adventure.",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Pine-Metal-Blue 2X-Up-Black 2X-Up-Burgundy 2X-Up-Faded-Violet",
    category: "Mens-Snowboard-Jackets",
    gender: "M"
  })

  yeti1_black_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/yeti_men/yeti_snowboard_jacket_black_m.png')
  yeti2_burgundy_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/yeti_men/yeti_snowboard_jacket_burgundy_m.png')
  yeti3_pineblue_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/yeti_men/yeti_snowboard_jacket_pine_blue_m.png')
  yeti4_purple_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/yeti_men/yeti_snowboard_jacket_purple_m.png')
  product1.photos.attach([{io: yeti1_black_m , filename: 'product1_black.png'},{io: yeti2_burgundy_m , filename: 'product1_burgundy.png'}, {io: yeti3_pineblue_m , filename: 'product1_pineblue.png'},{io: yeti4_purple_m , filename: 'product1_purple.png'}])


  product2 = Product.create!({
    name: "Adept 2021 Snowboard Jacket Men",
    price: 199.00 ,
    description: "Simplicity redefined. The Adept is a reliable zip-through jacket with all the features you need for a long day on the slopes. Highly waterproof, durable, and designed with the whole mountain in mind, the Adept is a staple in the Dope Snow lineup, and for good reason too. So say goodbye to swapping coats on the fly and choose the last one you'll ever want to own. When it comes to checking all the boxes, this is it. One jacket that really can do it all.",
    size: "XS S M L XL XXL",
    color: "Olive-Green",
    category: "Mens-Snowboard-Jackets",
    gender: "M"
  })

  adept1_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/adept_2021_men/adept_2021_snowboard_jacket_1_m.png')
  # adept2_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/adept_2021_men/adept_2021_snowboard_jacket_2_m.png')
  # adept3_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/adept_2021_men/adept_2021_snowboard_jacket_3_m.png')
  # product2.photos.attach([{io: adept1_m , filename: 'product2_1.png'},{io: adept2_m , filename: 'product2_2.png'},{io: adept3_m , filename: 'product2_3.png'}])
  product2.photos.attach([{io: adept1_m , filename: 'product2_1.png'}])



  # product2.photos.attach(io: adept_2021_Snowboard_jacket_men_olive_green2 , filename: 'product2_olive_green_2.png')

  product3 = Product.create!({
    name: "Akin Snowboard Jacket Men",
    price: 259.00 ,
    description: "The Akin is everything you ever wanted in a jacket, and a whole lot more. We took inspiration from old school utility jackets and decked this one out with seven outer pockets. Never worry again with this awesome design. Just zip up, load up, and head into the great unknown. Highly waterproof and insulated enough to tackle the harshest weather, the Akin is an easy park cruiser, and a big mountain bruiser. This is where we'd drop the mic, if we had one.",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Burgundy Olive-Green Black Metal-Blue",
    category: "Mens-Snowboard-Jackets",
    gender: "M"
  })

  atkin4_olivegreen_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/atkin_men/atkin_snowboard_jacket_olive_green_m.png')
  atkin1_black_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/atkin_men/atkin_snowboard_jacket_black_m.png')
  atkin3_burgundy_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/atkin_men/atkin_snowboard_jacket_burgundy_m.png')
  atkin2_blue_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-jacket/atkin_men/atkin_snowboard_jacket_blue_m.png')
  product3.photos.attach([{io: atkin3_burgundy_m , filename: 'product3_burgundy.png'}, {io: atkin4_olivegreen_m , filename: 'product3_olivegreen.png'}, {io: atkin1_black_m , filename: 'product3_black.png'}, {io: atkin2_blue_m , filename: 'product3_blue.png'}])

  product4 = Product.create!({
    name: "Notorious B.I.B Snowboard Pants Men",
    price: 219.00 ,
    description: "Add a little notoriety to your riding with the Notorious bib. It's a head turner and a piste burner, equipped with the latest tech to keep you warm and comfortable all day long. With super slick slouchy style that oozes steeze, and waterproofing that'd put a walrus to shame, the Notorious bib is a ride-everything, all-mountain slayer. And with an insanely comfortable relaxed fit and dropped crotch, unbeatable durability, and lots of storage, we wouldn't blame you if you never took it off. We know we haven't!",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Walnut Black Olive-Green Khaki",
    category: "Mens-Snowboard-Pants",
    gender: "M"
  })

  notorious1_black_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/notorious_bib_men/notorious_pants_black_m.png')
  notorious2_green_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/notorious_bib_men/notorious_pants_green_m.png')
  notorious3_khaki_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/notorious_bib_men/notorious_pants_khaki_m.png')
  notorious4_walnut_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/notorious_bib_men/notorious_pants_walnut_m.png')
  product4.photos.attach([{io: notorious4_walnut_m , filename: 'product4_walnut.png'}, {io: notorious1_black_m , filename: 'product4_black.png'},{io: notorious2_green_m , filename: 'product4_green.png'}, {io: notorious3_khaki_m , filename: 'product4_khaki.png'}])

  product5 = Product.create!({
    name: "Iconic Snowboard Pants Men",
    price: 169.00 ,
    description: "What is an Icon? Something that defines its sphere of influence. A true standout. A god among mortals. All of these things. More, even. And that's what we have created here. A defining pair of pants that rules the mountain with the kind of unattainable brilliance that all others aspire to. The Iconic are superbly waterproof, tailored to perfection with a relaxed and dropped-crotch fit, and so damn handsome that you can't quite look directly at them — kind of like the sun. And now, you too can share in their sheer, blinding magnificence, too, by owning your own pair.",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Black-Out Black Olive-Green Metal-Blue",
    category: "Mens-Snowboard-Pants",
    gender: "M"
  })

  iconic2_blackout_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/iconic_men/iconic_pants_blackout_m.png')
  iconic1_black_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/iconic_men/iconic_pants_black_m.png')
  iconic4_green_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/iconic_men/iconic_pants_green_m.png')
  iconic3_blue_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/iconic_men/iconic_pants_blue_m.png')
  product5.photos.attach([{io: iconic2_blackout_m , filename: 'product5_blackout.png'}, {io: iconic1_black_m , filename: 'product5_black.png'}, {io: iconic4_green_m , filename: 'product5_green.png'}, {io: iconic3_blue_m , filename: 'product5_blue.png'}])

  product6 = Product.create!({
    name: "Antek Snowboard Pants Men",
    price: 169.00 ,
    description: "The Antek are the perfect pants for the rider who likes to hit the park hard, and the après harder. They're lightweight, shaped to provide total freedom of movement, have oodles of waterproofing. Then we threw in some baggy, retro steez to top it off, along with some cargo style pockets, rounding the Anteks out as a true-blue pair of snow pants that are fit for all occasions, all conditions, and everything in between.",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Grey-Camo Black Olive-Green Sand",
    category: "Mens-Snowboard-Pants",
    gender: "M"
  })

  antek2_camogrey_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/anek_men/anek_pants_camo_grey_m.png')
  antek1_black_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/anek_men/anek_pants_black_m.png')
  antek3_green_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/anek_men/anek_pants_green_m.png')
  antek4_sand_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-pants/anek_men/anek_pants_sand_m.png')
  product6.photos.attach([{io: antek2_camogrey_m , filename: 'product6_camogrey.png'}, {io: antek1_black_m , filename: 'product6_black.png'}, {io: antek3_green_m , filename: 'product6_green.png'},{io: antek4_sand_m , filename: 'product6_sand.png'}])

  product7 = Product.create!({
    name: "Daily Capital T-shirt Men",
    price: 29.00 ,
    description: "The Daily T-Shirt from Dope is a super comfortable top with a new and improved design and fit for the 2021 season. Constructed from 100% BCI cotton, it has a mercerised finish for a smoother handfeel and better long term wear. Made from a slightly heavier cotton jersey, the Daily t-shirt is a firm favourite among the Dope crew, and you'll only need to put it on to see why! Material: 100% BCI Cotton, Fabric Weight: 250gsm",
    size: "XS S M L XL XXL",
    color: "Black",
    category: "Mens-T-shirts",
    gender: "M"
  })

  daily1_black1_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/daily/daily_tshirt_black_1_m.png')
  # daily2_black2_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/daily/daily_tshirt_black_2_m.png')
  # daily3_black3_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/daily/daily_tshirt_black_3_m.png')
  # daily4_black4_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/daily/daily_tshirt_black_4_m.png')
  # product7.photos.attach([{io: daily1_black1_m , filename: 'product7_black1.png'},{io: daily2_black2_m , filename: 'product7_black2.png'}, {io: daily3_black3_m , filename: 'product7_black3.png'},{io: daily4_black4_m , filename: 'product7_black4.png'}])
  product7.photos.attach([{io: daily1_black1_m , filename: 'product7_black1.png'}])

  product8 = Product.create!({
    name: "Daily Rose T-shirt Men",
    price: 29.00 ,
    description: "The Daily T-Shirt from Dope is a super comfortable top with a new and improved design and fit for the 2021 season. Constructed from 100% BCI cotton, it has a mercerised finish for a smoother handfeel and better long term wear. Made from a slightly heavier cotton jersey, the Daily t-shirt is a firm favourite among the Dope crew, and you'll only need to put it on to see why! Material: 100% BCI Cotton, Fabric Weight: 250gsm",
    size: "XS S M L XL XXL",
    color: "White Black",
    category: "Mens-T-shirts",
    gender: "M"
  })

  # rose1_black1_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rose/rose_tshirt_black_1_m.png')
  # rose3_white1_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rose/rose_tshirt_white_1_m.png')
  rose4_white2_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rose/rose_tshirt_white_2_m.png')
  rose2_black2_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rose/rose_tshirt_black_2_m.png')
  # product8.photos.attach([{io: rose1_black1_m , filename: 'product8_black1.png'},{io: rose2_black2_m , filename: 'product8_black2.png'}, {io: rose3_white1_m , filename: 'product8_white1.png'},{io: rose4_white2_m , filename: 'product8_white2.png'}])
  product8.photos.attach([{io: rose4_white2_m , filename: 'product8_white2.png'}, {io: rose2_black2_m , filename: 'product8_black2.png'}])


  product9 = Product.create!({
    name: "Daily Rise T-shirt Men",
    price: 29.00 ,
    description: "The Daily T-Shirt from Dope is a super comfortable top with a new and improved design and fit for the 2021 season. Constructed from 100% BCI cotton, it has a mercerised finish for a smoother handfeel and better long term wear. Made from a slightly heavier cotton jersey, the Daily t-shirt is a firm favourite among the Dope crew, and you'll only need to put it on to see why! Material: 100% BCI Cotton, Fabric Weight: 250gsm",
    size: "XS S M L XL XXL",
    color: "Burgundy Black White",
    category: "Mens-T-shirts",
    gender: "M"
  })

  # rise1_black1_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rise/rise_tshirt_black_1_m.png')
  rise3_burgundy_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rise/rise_tshirt_burgundy_m.png')
  rise2_black2_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rise/rise_tshirt_black_2_m.png')
  rise4_white_m = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-tshirt/rise/rise_tshirt_white_m.png')
  # product9.photos.attach([{io: rise1_black1_m , filename: 'product9_black1.png'},{io: rise2_black2_m , filename: 'product9_black2.png'}, {io: rise3_burgundy_m , filename: 'product9_burgundy.png'},{io: rise4_white_m , filename: 'product9_white.png'}])
  product9.photos.attach([{io: rise3_burgundy_m , filename: 'product9_burgundy.png'}, {io: rise2_black2_m , filename: 'product9_black2.png'}, {io: rise4_white_m , filename: 'product9_white.png'}])


  product10 = Product.create!({
    name: "Daily 2X-UP Hoodie Men",
    price: 65.00,
    description: "The Daily Hoodie from Dope is a slick and stylish new addition to the lineup, and blends Dope's signature oversized and baggy look with a modern fit and some cool new graphics. Made from a cosy 100% BCI cotton jersey with a brushed back terry inner for some fleecy goodness, it’s the ideal hoodie for kicking back or heading out. And with a mercerised outer for a smoother handfeel, this hoodie is as unique as it is stylish, and perfect for all occasions. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Faded-Grape Black Burgundy Olive-Green",
    category: "Mens-Hoddies",
    gender: "M"
  })

  daily3_grape_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/daily/daily_hoodie_grape_m.png')
  daily1_black1_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/daily/daily_hoodie_black_m.png')
  daily2_burgundy_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/daily/daily_hoodie_burgundy_m.png')
  daily4_green_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/daily/daily_hoodie_green_m.png')
  product10.photos.attach([ {io: daily3_grape_m_hood , filename: 'product10_grape.png'}, {io: daily1_black1_m_hood , filename: 'product10_black.png'},{io: daily2_burgundy_m_hood , filename: 'product10_burgundy.png'},{io: daily4_green_m_hood , filename: 'product10_green.png'}])


  product11 = Product.create!({
    name: "Ozed Hoodie Men",
    price: 74.00,
    description: "The Ozed Hoodie from Dope is a comfy regular fitting hoodie with all the classic hoodie features you'd expect. We made the Ozed from a cosy 100% BCI cotton jersey with a unique mercerised outer to give it a smoother and softer handfeel, as well as better longevity. Inside, you get a brushed back terry fabric for that fleecy feel. So, if you’re looking to get a little Doper this summer, then look no further. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    featured: true,
    size: "XS S M L XL XXL",
    color: "Black",
    category: "Mens-Hoddies",
    gender: "M"
  })

  # ozed1_black1_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/ozed/ozed_hoodie_black_1_m.png')
  ozed2_black2_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/ozed/ozed_hoodie_black_2_m.png')
  # ozed3_black3_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/ozed/ozed_hoodie_black_3_m.png')
  # ozed4_black4_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/ozed/ozed_hoodie_black_4_m.png')
  # product11.photos.attach([{io: ozed1_black1_m_hood , filename: 'product11_black1.png'},{io: ozed2_black2_m_hood , filename: 'product11_black2.png'}, {io: ozed3_black3_m_hood , filename: 'product11_black3.png'},{io: ozed4_black4_m_hood , filename: 'product11_black4.png'}])
  product11.photos.attach([{io: ozed2_black2_m_hood , filename: 'product11_black2.png'}])


  product12 = Product.create!({
    name: "Daily Range Hoodie Men",
    price: 65.00,
    description: "The Daily Hoodie from Dope is a slick and stylish new addition to the lineup, and blends Dope's signature oversized and baggy look with a modern fit and some cool new graphics. Made from a cosy 100% BCI cotton jersey with a brushed back terry inner for some fleecy goodness, it’s the ideal hoodie for kicking back or heading out. And with a mercerised outer for a smoother handfeel, this hoodie is as unique as it is stylish, and perfect for all occasions. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    size: "XS S M L XL XXL",
    color: "Black Faded-Grape",
    category: "Mens-Hoddies",
    gender: "M"
  })

  # range1_black1_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/range/range_hoodie_black_1_m.png')
  range2_black2_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/range/range_hoodie_black_2_m.png')
  range3_purple1_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/range/range_hoodie_purple_1.png')
  # range4_purple2_m_hood = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/m-hoodie/range/range_hoodie_purple_2.png')
  # product12.photos.attach([{io: range1_black1_m_hood , filename: 'product12_black1.png'},{io: range2_black2_m_hood , filename: 'product12_black2.png'}, {io: range3_purple1_m_hood , filename: 'product12_purple1.png'},{io: range4_purple2_m_hood , filename: 'product12_purple2.png'}])
  product12.photos.attach([{io: range2_black2_m_hood , filename: 'product12_black2.png'}, {io: range3_purple1_m_hood , filename: 'product12_purple1.png'}])

  #Womens

    product13 = Product.create!({
    name: "Adept W Snowboard Jacket Women",
    price: 219.00 ,
    description: "Simplicity redefined. The Adept is a reliable zip-through jacket with all the features you need for a long day on the slopes. Highly waterproof, durable, and designed with the whole mountain in mind, the Adept is a staple in the Dope Snow lineup, and for good reason too. So say goodbye to swapping coats on the fly and choose the last one you'll ever want to own. When it comes to checking all the boxes, this is it. One jacket that really can do it all.",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Pink Black Faded-Green Olive-Green",
    category: "Womens-Snowboard-Jackets",
    gender: "W"
  })

  adept4_pink_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/adept/adept_jacket_pink_w.png')
  adept1_black_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/adept/adept_jacket_black_w.png')
  adept3_olivegreen_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/adept/adept_jacket_olivegreen_w.png')
  adept2_fadegreen_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/adept/adept_jacket_fadedgreen_w.png')
  product13.photos.attach([{io: adept4_pink_w , filename: 'product13_pink.png'}, {io: adept1_black_w , filename: 'product13_black.png'},{io: adept2_fadegreen_w , filename: 'product13_fadegreen.png'}, {io: adept3_olivegreen_w , filename: 'product13_olivegreen.png'}])


  product14 = Product.create!({
    name: "Yeti W Snowboard Jacket Women",
    price: 169.00 ,
    description: "The Yeti is a mythical, elusive, mysterious beast... but there is one thing we know about it — that it's the best dang riding hoodie in the mountains! If you're looking for a reliable, cosy, comfy, and gosh-darn steezy softshell to take from the park to the pow, then hunt yourself down one of these and embrace the monster within. With lots of slick touches to make your day at the resort legendary, the Yeti is the only choice for your next snowy adventure.",
    size: "XXS XS S M L XL",
    color: "Pine-Black 2X-Up-Black 2X-Up-Metal-Blue 2X-Up-Soft-Green",
    category: "Womens-Snowboard-Jackets",
    gender: "W"

  })

  yeti4_pineblack_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/yeti/yeti_jacket_pineblack_w.png')
  yeti1_black_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/yeti/yeti_jacket_black_w.png')
  yeti2_blue_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/yeti/yeti_jacket_blue_w.png')
  yeti3_green_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/yeti/yeti_jacket_green_w.png')
  product14.photos.attach([{io: yeti4_pineblack_w , filename: 'product14_pineblack.png'}, {io: yeti1_black_w , filename: 'product14_black.png'},{io: yeti2_blue_w , filename: 'product14_blue.png'}, {io: yeti3_green_w , filename: 'product14_green.png'}])


  product15 = Product.create!({
    name: "Annok W Snowboard Jacket Women",
    price: 219.00 ,
    description: "Dope's very own signature style, the Annok stays in the range to reign supreme over all other anoraks. We gave it waterproofing and breathability to tackle everything the mountain has on offer, and lots of slick little details like our contrast drawstrings and triple pocket system. Which makes the Annok one serious street-style inspired anorak that's ready to slash everything from the park to the pow, and look awesome doing it.",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Cumulus Black Olive-Green",
    category: "Womens-Snowboard-Jackets",
    gender: "W"

  })

  annok2_cumulus1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/annok/annok_jacket_cumulus_1_w.png')
  annok1_black_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/annok/annok_jacket_black_w.png')
  # annok3_cumulus2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/annok/annok_jacket_cumulus_2_w.png')
  annok4_green_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-jacket/annok/annok_jacket_green_w.png')
  # product15.photos.attach([{io: annok1_black_w , filename: 'product15_black.png'},{io: annok2_cumulus1_w , filename: 'product15_cumulus1.png'}, {io: annok3_cumulus2_w , filename: 'product15_cumulus2.png'},{io: annok4_green_w , filename: 'product15_green.png'}])
  product15.photos.attach([{io: annok2_cumulus1_w , filename: 'product15_cumulus1.png'},{io: annok1_black_w , filename: 'product15_black.png'},{io: annok4_green_w , filename: 'product15_green.png'}])


  product16 = Product.create!({
    name: "Con W 2021 Snowboard Pants Women",
    price: 219.00 ,
    description: "The Con pants perfectly blend form and function, and are a team and crowd favourite for good reason. These pants are special because they not only have that slimmer, thigh-hugging fit you've been craving, but are also super comfortable and provide total freedom of movement. So, you still get that skinny-profile, but with none of the restriction. And all that is because they're made with our special 4-way stretch material. Which makes the Con the ultimate pair of slim-fit riding pants perfect for the whole mountain. You're welcome.",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Black",
    category: "Womens-Snowboard-Pants",
    gender: "W"
  })

  con1_black1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/yeti/yeti_pants_black_1_m.png')
  # con2_black2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/yeti/yeti_pants_black_2_w.png')
  # con3_black3_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/yeti/yeti_pants_black_3_w.png')
  # con4_black4_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/yeti/yeti_pants_black_4_w.png')
  # product16.photos.attach([{io: con1_black1_w , filename: 'product16_black1.png'},{io: con2_black2_w , filename: 'product16_black2.png'}, {io: con3_black3_w , filename: 'product16_black3.png'},{io: con4_black4_w , filename: 'product16_black4.png'}])
  product16.photos.attach([{io: con1_black1_w , filename: 'product16_black1.png'}])


  product17 = Product.create!({
    name: " Notorious B.I.B W Snowboard Pants Women",
    price: 219.00 ,
    description: "Add a little notoriety to your riding with the Notorious bib. It's a head turner and a piste burner, equipped with the latest tech to keep you warm and comfortable all day long. With super slick slouchy style that oozes steeze, and waterproofing that'd put a walrus to shame, the Notorious bib is a ride-everything, all-mountain slayer. And with an insanely comfortable relaxed fit and dropped crotch, unbeatable durability, and lots of storage, we wouldn't blame you if you never took it off. We know we haven't!",
    size: "XXS XS S M L XL",
    color: "Faded-Violet Black Soft-Green Pink",
    category: "Womens-Snowboard-Pants",
    gender: "W"
  })

  notorious4_violet_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/notorious/notorious_pants_violet_w.png')
  notorious1_black_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/notorious/notorious_pants_black_w.png')
  notorious2_green_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/notorious/notorious_pants_green_w.png')
  notorious3_pink_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/notorious/notorious_pants_pink_w.png')
  product17.photos.attach([{io: notorious4_violet_w , filename: 'product17_violet.png'}, {io: notorious1_black_w , filename: 'product17_black.png'},{io: notorious2_green_w , filename: 'product17_green.png'}, {io: notorious3_pink_w , filename: 'product17_pink.png'}])


  product18 = Product.create!({
    name: "Tigress W Snowboard Pants Women",
    price: 169.00,
    description: "Skinny, stretchy snow pants. You might be sold already, just from those four words. But if not, allow us to sweeten the deal. We threw in a little spandex to give these pants some elasticity, and then cranked things up with some awesome design touches. They've got waterproofing for days, a 2-way stretch, as well as a snug fit with a bootcut hem, you know, just for a splash of retro flair. There are few pairs of pants out there that look like this, and even fewer that can handle everything mother earth serves up. From the jungle to the slopes, the tiger is on the hunt!",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Light-Grey Black Walnut",
    category: "Womens-Snowboard-Pants",
    gender: "W"
  })

  tigress2_lightgrey1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/tigress/tigress_pants_lightgrey_1_w.png')
  tigress1_black_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/tigress/tigress_pants_black_w.png')
  # tigress3_lightgrey2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/tigress/tigress_pants_lightgrey_2_w.png')
  tigress4_walnut_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-pants/tigress/tigress_pants_walnut_w.png')
  # product18.photos.attach([{io: tigress1_black_w , filename: 'product18_black.png'},{io: tigress2_lightgrey1_w , filename: 'product18_lightgrey1.png'}, {io: tigress3_lightgrey2_w , filename: 'product18_lightgrey2.png'},{io: tigress4_walnut_w , filename: 'product18_walnut.png'}])
  product18.photos.attach([{io: tigress2_lightgrey1_w , filename: 'product18_lightgrey1.png'}, {io: tigress1_black_w , filename: 'product18_black.png'}, {io: tigress4_walnut_w , filename: 'product18_walnut.png'}])


  product19 = Product.create!({
    name: "Regular Range T-shirt Women",
    price: 29.00 ,
    description: "The Regular T-Shirt from Dope is a slick new addition to the 2021 lineup, and features an all new fit and fabric construction to go with its unmistakable style. Made from super soft 100% cotton with a mercerised outer for a softer, smoother handfeel and better wear versus traditional cotton, it's not only made to look good, but perform, too. And with the Better Cotton Initiative stamp of approval, you can feel great about wearing it, too. Material: 100% BCI Cotton, Fabric Weight: 170gsm",
    size: "XXS XS S M L XL",
    color: "White Black Faded-Grape",
    category: "Womens-T-shirts",
    gender: "W"
  })

  range4_white_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/range/range_tshirt_white_w.png')
  # range1_black1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/range/range_tshirt_black_1_w.png')
  range2_black2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/range/range_tshirt_black_2_w.png')
  range3_purple_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/range/range_tshirt_purple_w.png')
  # product19.photos.attach([{io: range1_black1_w , filename: 'product19_black1.png'},{io: range2_black2_w , filename: 'product19_black2.png'}, {io: range3_purple_w , filename: 'product19_purple.png'},{io: range4_white_w , filename: 'product19_white.png'}])
  product19.photos.attach([{io: range4_white_w , filename: 'product19_white.png'}, {io: range2_black2_w , filename: 'product19_black2.png'}, {io: range3_purple_w , filename: 'product19_purple.png'}])

  product20 = Product.create!({
    name: "Regular Rose T-shirt Women",
    price: 29.00 ,
    description: "The Regular T-Shirt from Dope is a slick new addition to the 2021 lineup, and features an all new fit and fabric construction to go with its unmistakable style. Made from super soft 100% cotton with a mercerised outer for a softer, smoother handfeel and better wear versus traditional cotton, it's not only made to look good, but perform, too. And with the Better Cotton Initiative stamp of approval, you can feel great about wearing it, too. Material: 100% BCI Cotton, Fabric Weight: 170gsm",
    size: "XXS XS S M L XL",
    color: "Black White",
    category: "Womens-T-shirts",
    gender: "W"
  })

  # rose1_black1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/rose/rose_tshirt_black_1_w.png')
  rose2_black2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/rose/rose_tshirt_black_2_w.png')
  rose3_white1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/rose/rose_tshirt_white_1_w.png')
  # rose4_white2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/rose/rose_tshirt_white_2_w.png')
  # product20.photos.attach([{io: rose1_black1_w , filename: 'product20_black1.png'},{io: rose2_black2_w , filename: 'product20_black2.png'}, {io: rose3_white1_w , filename: 'product20_white1.png'},{io: rose4_white2_w , filename: 'product20_white2.png'}])
  product20.photos.attach([{io: rose2_black2_w , filename: 'product20_black2.png'}, {io: rose3_white1_w , filename: 'product20_white1.png'}])


  product21 = Product.create!({
    name: "Regular Beak T-shirt Women",
    price: 29.00 ,
    description: "The Regular T-Shirt from Dope is a slick new addition to the 2021 lineup, and features an all new fit and fabric construction to go with its unmistakable style. Made from super soft 100% cotton with a mercerised outer for a softer, smoother handfeel and better wear versus traditional cotton, it's not only made to look good, but perform, too. And with the Better Cotton Initiative stamp of approval, you can feel great about wearing it, too. Material: 100% BCI Cotton, Fabric Weight: 170gsm",
    size: "XXS XS S M L XL",
    color: "Faded-Green",
    category: "Womens-T-shirts",
    gender: "W"
  })

  # beak1_green1_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/beak/beak_tshirt_1_w.png')
  beak2_green2_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/beak/beak_tshirt_2_w.png')
  # beak3_green3_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/beak/beak_tshirt_3_w.png')
  # beak4_green4_w = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-tshirt/beak/break_shirt_4_w.png')
  # product21.photos.attach([{io: beak1_green1_w , filename: 'product21_green1.png'},{io: beak2_green2_w , filename: 'product21_green2.png'}, {io: beak3_green3_w , filename: 'product21_green3.png'},{io: beak4_green4_w , filename: 'product21_green4.png'}])
  product21.photos.attach([{io: beak2_green2_w , filename: 'product21_green2.png'}])


  product22 = Product.create!({
    name: "Ozed W Hoodie Women",
    price: 74.00,
    description: "The Ozed Hoodie from Dope is a comfy regular fitting hoodie with all the classic hoodie features you'd expect. We made the Ozed from a cosy 100% BCI cotton jersey with a unique mercerised outer to give it a smoother and softer handfeel, as well as better longevity. Inside, you get a brushed back terry fabric for that fleecy feel. So, if you're looking to get a little Doper this summer, then look no further. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Black",
    category: "Womens-Hoddies",
    gender: "W"
  })

  # ozed1_black1_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/ozed/ozed_hoodie_black_1_w.png')
  ozed2_black2_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/ozed/ozed_hoodie_black_2_w.png')
  # ozed3_black3_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/ozed/ozed_hoodie_black_3_w.png')
  # ozed4_black4_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/ozed/ozed_hoodie_black_4_w.png')
  # product22.photos.attach([{io: ozed1_black1_w_hoodie , filename: 'product22_black1.png'},{io: ozed2_black2_w_hoodie , filename: 'product22_black2.png'}, {io: ozed3_black3_w_hoodie , filename: 'product22_black3.png'},{io: ozed4_black4_w_hoodie , filename: 'product22_black4.png'}])
  product22.photos.attach([{io: ozed2_black2_w_hoodie , filename: 'product22_black2.png'}])


  product23 = Product.create!({
    name: "Regular Rose Hoodie Women",
    price: 65.00,
    description: "The Regular Hoodie from Dope is our brand new women-specific fit hoodie with the perfect amount of bagginess and a little extra drop to make it super comfy and cosy with our signature oversized feel. Made from a chunky 100% BCI cotton jersey with a mercerised outer to give it a super smooth and soft handfeel, and a comfy inner for that cosy snugness, the Regular hoodie is everything you ever wanted in a slouchy pullover, and so much more. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    featured: true,
    size: "XXS XS S M L XL",
    color: "Bleached-Black Black",
    category: "Womens-Hoddies",
    gender: "W"
  })

  # rose1_bleachedblack1_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/rose/rose_hoodie_bleachedblack_1_w.png')
  rose2_bleachedblack2_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/rose/rose_hoodie_bleachedblack_2_w.png')
  # rose3_black1_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/rose/rose_hoodie_black_1_w.png')
  rose4_black2_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/rose/rose_hoodie_black_2_w.png')
  # product23.photos.attach([{io: rose1_bleachedblack1_w_hoodie , filename: 'product23_bleachedblack1.png'},{io: rose2_bleachedblack2_w_hoodie , filename: 'product23_bleachedblack2.png'}, {io: rose3_black1_w_hoodie , filename: 'product23_black1.png'},{io: rose4_black2_w_hoodie , filename: 'product23_black2.png'}])
  product23.photos.attach([{io: rose2_bleachedblack2_w_hoodie , filename: 'product23_bleachedblack2.png'},{io: rose4_black2_w_hoodie , filename: 'product23_black2.png'}])


  product24 = Product.create!({
    name: "Regular Range Hoodie Women",
    price: 65.00,
    description: "The Regular Hoodie from Dope is our brand new women-specific fit hoodie with the perfect amount of bagginess and a little extra drop to make it super comfy and cosy with our signature oversized feel. Made from a chunky 100% BCI cotton jersey with a mercerised outer to give it a super smooth and soft handfeel, and a comfy inner for that cosy snugness, the Regular hoodie is everything you ever wanted in a slouchy pullover, and so much more. Material: 100% BCI Cotton, Fabric Weight: 380gsm",
    size: "XXS XS S M L XL",
    color: "Faded-Grape",
    category: "Womens-Hoddies",
    gender: "W"
  })

  range1_grape1_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/range/range_hoodie_1_w.png')
  # range2_grape2_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/range/range_hoodie_2_w.png')
  # range3_grape3_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/range/range_hoodie_3_w.png')
  # range4_grape4_w_hoodie = URI.open('https://sick-snow.s3.us-west-2.amazonaws.com/sick_snow_image/w-hoodie/range/range_hoodie_4_w.png')
  # product24.photos.attach([{io: range1_grape1_w_hoodie , filename: 'product24_grape1.png'},{io: range2_grape2_w_hoodie , filename: 'product24_grape2.png'}, {io: range3_grape3_w_hoodie , filename: 'product24_grape3.png'},{io: range4_grape4_w_hoodie , filename: 'product24_grape4.png'}])
  product24.photos.attach([{io: range1_grape1_w_hoodie , filename: 'product24_grape1.png'}])

  #reviews

  r1 = Review.create!({
    body: "I love this product",
    user_id: 1, 
    product_id: 3,
    title: "cool product",
    rating: 5,
  })

  r2 = Review.create!({
    body: "Size came a little smaller",
    user_id: 5, 
    product_id: 3,
    title: "small product",
    rating: 4,
  })

  r3 = Review.create!({
    body: "I love this product",
    user_id: 8, 
    product_id: 6,
    title: "cool product",
    rating: 5,
  })

  r4 = Review.create!({
    body: "I love this product",
    user_id: 3, 
    product_id: 2,
    title: "cool product",
    rating: 5,
  })

  r5 = Review.create!({
    body: "I love this product",
    user_id: 6, 
    product_id: 22,
    title: "cool product",
    rating: 5,
  })

  r6 = Review.create!({
    body: "I love this product",
    user_id: 5, 
    product_id: 24,
    title: "cool product",
    rating: 5,
  })

  r7 = Review.create!({
    body: "Survived a blizzard with this",
    user_id: 6, 
    product_id: 3,
    title: "cool product",
    rating: 5,
  })

  r8 = Review.create!({
    body: "Got way too hot when I wore it in the summer",
    user_id: 4, 
    product_id: 3,
    title: "cool product",
    rating: 1,
  })

  r9 = Review.create!({
    body: "I love this product",
    user_id: 5, 
    product_id: 15,
    title: "cool product",
    rating: 4,
  })

  r10 = Review.create!({
    body: "Wish they'd make this in different colors",
    user_id: 1, 
    product_id:11,
    title: "color product",
    rating: 4,
  })

  r11 = Review.create!({
    body: "I love this product",
    user_id: 6, 
    product_id: 18,
    title: "cool product",
    rating: 5,
  })

  r12 = Review.create!({
    body: "Got a lot of compliments on the mountain",
    user_id: 1, 
    product_id: 7,
    title: "best product",
    rating: 5,
  })
  puts 'done'
