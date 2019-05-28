# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all

Hostel.all.each do |hostel|
  hostel.destroy
end

User.all.each do |user|
  user.destroy
end

Booking.all.each do |user|
  booking.destroy
end

guest = User.create!(
  email: 'guest@example.com',
  password: '123456',
  user_type: 'guest',
  first_name: 'Don',
  last_name: 'Murphy',
)
guest.save!

owner = User.create!(
  email: 'owner@example.com',
  password: '123456',
  user_type: 'owner',
  first_name: 'Miriam',
  last_name: 'Kennedy',
)
owner.save!

hostel = Hostel.create!(
  name: "Generator London",
  address: '37 Tavistock Pl, Saint Pancras, London WC1H 9SE',
  city_name: 'London',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452477/photo-1488805990569-3c9e1d76d51c_wkrmto.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452509/photo-1489171078254-c3365d6e359f_ncupzf.jpg",
  photo3: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
)

hostel2 = Hostel.create!(
  name: "Heart of Gold Hostel",
  address: 'Johannisstraße 11, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452655/photo-1490732239438-ee956a60ed41_hb9sbw.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452594/photo-1488901512066-cd403111aeb2_e1vezt.jpg",
  photo3: "https://images.unsplash.com/photo-1520014384091-f75776a1ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80",
)

hostel3 = Hostel.create!(
  name: "Generator Berlin Mitte",
  address: 'Oranienburger Str. 65, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452715/photo-1505576391880-b3f9d713dc4f_rxpe4n.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452759/photo-1520605728164-b6a5c6814203_tz64zy.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452373/DSC_0231_l7shpy.jpg",
)


hostel4 = Hostel.create!(
  name: "EastSeven Berlin Hostel",
  address: 'Schwedter Str. 7, 10119 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453009/photo-1504042502815-3d3544395216_zlqggk.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452874/photo-1547473078-cbab237054c0_gqy58a.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453055/photo-1495754149474-e54c07932677_g14tvq.jpg",
)

hostel5 = Hostel.create!(
  name: "ClinkNoord",
  address: 'Badhuiskade 3, 1031 KV Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536251/photo-1501183638710-841dd1904471_kmhl1s.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536321/photo-1556438758-8d49568ce18e_ydc17g.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536522/photo-1496531693211-31c5234a5ea9_yhlzic.jpg",
)

hostel6 = Hostel.create!(
  name: "Flying Pig Downtown",
  address: 'Nieuwendijk 100, 1012 MR Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536443/photo-1422818159909-e2fc50042acb_jacgpb.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536474/photo-1507652313519-d4e9174996dd_smjysh.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536414/photo-1553444836-bc6c8d340ba7_cif2pa.jpg",
)

hostel7 = Hostel.create!(
  name: "Hostel Van Gogh",
  address: 'van de Veldestraat 5, 1071 CW Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537216/photo-1491295005076-7840bcf778ec_rgckzz.jpg",
  photo2: "https://images.unsplash.com/photo-1485722841820-473e4b6c3bde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537023/hotel-bed-bedroom-room_vvdzfj.jpg",
)


hostel8 = Hostel.create!(
  name: "We Love F. Tourists Hostel",
  address: 'R. dos Fanqueiros 267, 1100-230 Lisbon, Portugal',
  city_name: 'Lisbon',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537324/photo-1531911120215-9f628dc6e9fc_g4kklo.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537379/photo-1477120292453-1cad512c7c44_abklyg.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537437/photo-1541004995602-b3e898709909_vorsdj.jpg",
)

bed1 = Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel
  )

bed2 = Bed.create!(
  price: 12.0,
  room_type: "8 bed",
  hostel: hostel
  )
