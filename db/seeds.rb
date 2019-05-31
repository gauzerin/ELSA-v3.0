# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all

Bed.destroy_all

Hostel.destroy_all

User.destroy_all

Booking.destroy_all

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

hostel1 = Hostel.create!(
  name: "Generator London",
  address: '37 Tavistock Pl, London WC1H 9SE',
  city_name: 'London',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537437/photo-1541004995602-b3e898709909_vorsdj.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452509/photo-1489171078254-c3365d6e359f_ncupzf.jpg",
  photo3: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
  description: "Generator London was the very first Generator and you'll find it in the area of Russell Square in the heart of the West End.

It's the ideal spot to enjoy London from, everything you need to see is minutes away by tube. You'll never run out of things to do in the UK's capital. You just have to decide where to start and we can help you with that. When you have seen and done it all for the day head back to Generator and unwind.

It's a destination in its own right and a great place to socialise and reflect on your experiences of the day. Head to the bar and chill out areas to get yourself a well deserved drink or two. It's lively, friendly and un-missable. We've also got great beds for sleepy heads and of course you'll be enjoying London life in the most authentic surroundings.

Choose from a great selection of rooms, from Dorms, to Quads, to Private rooms with innovative mod cons. Fast and free Wi-Fi is all yours too. To get the most out of your stay visit the travel shop and our city experts will help you devise an itinerary that will take you to all the hidden treasures this dynamic city has to offer. You'll have to stay longer to fit it all in but you'll not need convincing of that. We'll see you there soon.

Important points:

Central location Situated close to Russell Square
Complimentary Wi-Fi in public areas & guest bedrooms
Internet terminals
Travel Desk
Luggage Store
Laundry Room
Games Room
Bar & Chill Out Areas
Nightly Events & Entertainment
Dining facilities for breakfast, lunch, dinner and all day snacks
Female Dormitories
Dormitories for 4, 6 & 8
Group bookings

FREE WI-FI
Stay connected. Free across most areas.(public areas only at the moment) Internet terminals also available for a small charge.

THE BAR
Order a classic cocktail. Open from 5pm-2am with fun and games every night.

THE LOUNGE & CAFE
Open everyday 24/7

BREAKFAST

Breakfast not included.
International breakfast available upon request: £7.50 if booked online and £9.50 on site.
Monday to Friday from 7 am to 10 am
Saturday and Sunday from 7 am to 12 pm


DINNER.
Delicious meals available between 5-9pm every evening. A dish of the day will also be available together with the bar snack menu.

SNACKS
Vending machines available for night owls to satisfy the midnight munchies.

ROOMS TO AMAZE
A wide selection of contemporary Privates, Twins, Triples & Dorms, with crisp white linen all available at great rates. Towels included complimentary in Twin rooms only.

BATHROOMS
Shared showers on every floor.

LAUNDRY
Open 24 hours a day where you can wash, dry and iron for a small fee.

24 HOUR RECEPTION
No need to worry about arriving late or early. The Generator Reception is open 24 hours a day with a duty manager who's always around to help.

LUGGAGE STORE
Secure luggage room is available so you can sightsee without dragging your bag with you.

GREAT STAFF
All our staff are multi lingual and on hand to help you with whatever info you need.

TRAVEL SHOP
Purchase tickets, tours and a whole lot more including phone and postal service. We will help you make the most of your stay. Undecided? Take advantage of our complimentary guided walking tour available daily.

Unfortunately guests under the age of 18 are not allowed to stay in the dorms .

We look forward to giving you a warm welcome to The Generator in the near future."
)

hostel2 = Hostel.create!(
  name: "Heart of Gold Hostel",
  address: 'Johannisstraße 11, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452655/photo-1490732239438-ee956a60ed41_hb9sbw.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452594/photo-1488901512066-cd403111aeb2_e1vezt.jpg",
  photo3: "https://images.unsplash.com/photo-1520014384091-f75776a1ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80",
  description: "Welcome to our state-of-the-art hostel that looks a bit like a spaceship but is mostly harmless.

We’re your hostel for free stuff in Berlin! We’ve got free Wi-Fi in most areas, free coffee and tea, free maps and free English-language guided tours!

We are the most centrally located hostel in down-town Berlin and offer dorms, private cabins and private rooms with showers.

Each of our rooms has been painted by a different artist and features tables, chairs, reading lamps, lockers, a mirror, panoramic windows and wheelchair accessibility. Sheets and towels are included but are subject to a €5 deposit.

Our €5 all-you-can-eat breakfast buffet is served from 8am to noon.

Guests enjoy free computer access in reception area and free WiFi in most areas!

Our relaxed bar has a comfy Chesterfield sofa and cheap beers (bottled and draught) plus Jägermeister on tap and much more...have fun! Snacks and drinks are also available at the bar and there’s more nightlife just around the corner.

Our reception desk is open 24hrs and we have keycard access, a free safe and a free secure luggage room with lockers so you can always feel safe. The large reception area has panoramic windows.

We have a pool table and a yard and garden where you can hang out when the weather’s suitable. You can also rent sunglasses from us.

Our friendly and helpful staff will do their best to make your stay as enjoyable as possible in one of the most hospitable (and
wheelchair-friendly) starships in Berlin.

Please read our Things to Note below before booking.

Special conditions for bookings over New Year's which include 31st December:
Minimum stay: 4 nights
Full payment is due within 1 week after the booking has been made. This payment is non refundable"
)

hostel3 = Hostel.create!(
  name: "Generator Berlin Mitte",
  address: 'Oranienburger Str. 65, 10117 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452715/photo-1505576391880-b3f9d713dc4f_rxpe4n.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452759/photo-1520605728164-b6a5c6814203_tz64zy.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452373/DSC_0231_l7shpy.jpg",
  description: "You'll find Generator in the heart of the city, in the district of Mitte which is one of Berlin's oldest districts.

You couldn't get a better location if you tried. Great for everything that is a must see in this great city as well as the nightlife. Oranienburger Strasse has become Mitte's hub for nightlife, galleries, art, cafes and restaurants. The hostel sits in the centre of this grand street and is a terrific hangout for locals

Once you have seen and done it all head back to Generator, the perfect place of refuge, with great beds for sleepy heads, a bar and lounge that serves the best drinks and entertainment for miles around and of course you'll be enjoying Berlin life in the most stylish and authentic surroundings.

Choose from a great selection of rooms, from Dorms, to Quads, to Private en-suites with innovative mod cons like a USB port and your own LED light for late night reading. Fast and free Wi-Fi is all yours too.
To get the most out of your stay visit the travel shop and our city experts will help you devise an itinerary that will take you to all the hidden treasures this dynamic city has to offer.

You'll definitely need more than a day to explore this city, it's a culture vultures delight. We'll see you there soon.

Breakfast not included.
International breakfast available upon request: €7.50
Monday to Friday from 7 am to 10 am
Saturday and Sunday from 7 am to 12 pm"
)


hostel4 = Hostel.create!(
  name: "EastSeven Berlin Hostel",
  address: 'Schwedter Str. 7, 10119 Berlin, Germany',
  city_name: 'Berlin',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453009/photo-1504042502815-3d3544395216_zlqggk.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558452874/photo-1547473078-cbab237054c0_gqy58a.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558453055/photo-1495754149474-e54c07932677_g14tvq.jpg",
  description: "“Best Hostel Germany 2015” You nominated us as Top 10 Hostels every year since 2006 - incl. the Cleanest Hostel Worldwide in 2005! Also highly recommended by Lonely Planet, Let's Go, Rick Steve's, etc.

To ensure that you have a fantastic time in Berlin, our medium sized hostel will provide you with:
- friendly, multilingual staff
- great location in the centre of Berlin
- Free WiFi
- late check-out, free luggage storage
- maps, information and recommendations on where to go.
- walking tours leave from our hostel twice a day
- bicycle rental
- very comfy beds incl. reading light, lockers, wall sockets
- central heating and 24h hot showers!
- hang out in our kitchen, cozy lounge, green and quiet garden - fancy having a BBQ?
- laundry service, printer, phone chargers, padlocks, umbrellas and more ...

Please Note:
The hostel charges the given credit card in advance and we will cancel a booking if this does not work!
The hostel charges 3 days before arrival the value of the first night for regular bookings, and the full amount directly after booking for non-refundable bookings.
If we cannot charge the card the property will send an email about that and if you don't provide valid card details within 24 hours we will cancel the entire booking. You are responsible to check your emails and also the spam filter.

This is NOT a party hostel and we do NOT have an elevator!
NO stag or hen parties, max. of 8 people per group (even if you make several smaller bookings) and no persons under 18 (unless accompanied by a parent and booking a private room).
BUT we are (very) clean and offer a lovely, relaxed atmosphere where you can feel at home, easily chat to our staff and make new friends. Hang out in the garden and use our well equipped kitchen to prepare your own food - and if you feel like it, maybe even cook dinner for your fellow travellers - we provide the foodstuff and a little extra on top.

We offer an all-you-can-eat continental breakfast with proper Italian coffee and good tea for a very low price - or get a voucher for some of the nice cafés in our neighborhood.

Our Hostel is conveniently located between the hustle and bustle of Mitte (the city's central district) and charming Prenzlauer Berg.
We're surrounded by cafés, restaurants, bars, clubs and great shops and you can walk to Alexander Platz (the heart of Berlin).

This is the ideal place for travelers seeking the true spirit of Berlin."
)

hostel5 = Hostel.create!(
  name: "ClinkNoord",
  address: 'Badhuiskade 3, 1031 KV Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536251/photo-1501183638710-841dd1904471_kmhl1s.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536321/photo-1556438758-8d49568ce18e_ydc17g.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536522/photo-1496531693211-31c5234a5ea9_yhlzic.jpg",
  description: "ClinkNOORD  A creative hostel

Why ClinkNOORD?

Complete with original laboratory features, a spacious atrium and a lively bar, ClinkNOORD is the perfect hostel for travellers looking for a unique Amsterdam experience. Located across the IJ river, just 10 minutes from Amsterdam Centraal Station, ClinkNOORD is right in the heart of the action.

24hr RECEPTION
Our reception is open 24/7 so there’s always someone available if you need help! Arriving late? Our night team can check you in no problem.

DORMITORIES
We offer 4  18 bed mixed and girls only dorms both with and without en-suite bathrooms. We also offer single, twin and double private rooms with and without bathrooms.

BAR
Our on-site bar (ZincBAR) is the place to head to soak in the sounds of live music, chat with friends or just relax with a cold drink.

C-LAB
Artists, musicians and writers are regulars at ClinkNOORD. Catch them performing in the ZincBAR or working on their latest pieces in our gallery space, C-LAB.

BEDS
All of our beds come with reading lights, USB ports to charge your electronic devices and secure lockers for your belongings.

BREAKFAST
We offer a great value, all you can eat buffet breakfast, €8.00 a day. (To be booked directly with the hostel or on arrival)

FREE WiFi
There is free Wi-Fi in all our hostels, so you can keep in touch with friends and family whilst on your travels.

SECURITY
As well as 24/7 key card entry, each bed comes with a lock box to keep yourself and all your belongings safe. There are also larger lockers available at reception.

SELF-CATERING KITCHEN
Our guest kitchen has all the things you need to cook a tasty feast! Open from 07:00am  12.00am.

LAUNDRY ROOM
Coin-operated washing machines are available at the hostel. 40-minute cycle + washing powder = €4.50. 45-minute drying cycle = €1.50.

Please make sure to read the hostel's Terms & Conditions before booking. Special conditions apply for group bookings (15 guests or more), please contact the hostel directly.

Please make sure to read the hostel's Terms & Conditions before booking.
Special conditions apply for group bookings (15 guests or more) and Stag/hen parties, please contact the hostel directly."
)

hostel6 = Hostel.create!(
  name: "Flying Pig Downtown",
  address: 'Nieuwendijk 100, 1012 MR Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536443/photo-1422818159909-e2fc50042acb_jacgpb.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536474/photo-1507652313519-d4e9174996dd_smjysh.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558536414/photo-1553444836-bc6c8d340ba7_cif2pa.jpg",
  description: "ClinkNOORD  A creative hostel

Why ClinkNOORD?

Complete with original laboratory features, a spacious atrium and a lively bar, ClinkNOORD is the perfect hostel for travellers looking for a unique Amsterdam experience. Located across the IJ river, just 10 minutes from Amsterdam Centraal Station, ClinkNOORD is right in the heart of the action.

24hr RECEPTION
Our reception is open 24/7 so there’s always someone available if you need help! Arriving late? Our night team can check you in no problem.

DORMITORIES
We offer 4  18 bed mixed and girls only dorms both with and without en-suite bathrooms. We also offer single, twin and double private rooms with and without bathrooms.

BAR
Our on-site bar (ZincBAR) is the place to head to soak in the sounds of live music, chat with friends or just relax with a cold drink.

C-LAB
Artists, musicians and writers are regulars at ClinkNOORD. Catch them performing in the ZincBAR or working on their latest pieces in our gallery space, C-LAB.

BEDS
All of our beds come with reading lights, USB ports to charge your electronic devices and secure lockers for your belongings.

BREAKFAST
We offer a great value, all you can eat buffet breakfast, €8.00 a day. (To be booked directly with the hostel or on arrival)

FREE WiFi
There is free Wi-Fi in all our hostels, so you can keep in touch with friends and family whilst on your travels.

SECURITY
As well as 24/7 key card entry, each bed comes with a lock box to keep yourself and all your belongings safe. There are also larger lockers available at reception.

SELF-CATERING KITCHEN
Our guest kitchen has all the things you need to cook a tasty feast! Open from 07:00am  12.00am.

LAUNDRY ROOM
Coin-operated washing machines are available at the hostel. 40-minute cycle + washing powder = €4.50. 45-minute drying cycle = €1.50.

Please make sure to read the hostel's Terms & Conditions before booking. Special conditions apply for group bookings (15 guests or more), please contact the hostel directly.

Please make sure to read the hostel's Terms & Conditions before booking.
Special conditions apply for group bookings (15 guests or more) and Stag/hen parties, please contact the hostel directly."
)

hostel7 = Hostel.create!(
  name: "Hostel Van Gogh",
  address: 'van de Veldestraat 5, 1071 CW Amsterdam, Netherlands',
  city_name: 'Amsterdam',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537216/photo-1491295005076-7840bcf778ec_rgckzz.jpg",
  photo2: "https://images.unsplash.com/photo-1485722841820-473e4b6c3bde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537023/hotel-bed-bedroom-room_vvdzfj.jpg",
  description: "This modern youth accomodation is one of the best in Amsterdam Centre!!

Hostel Van Gogh is situated in the best spot in Amsterdam centre, the most vibrant centre for art, fashion and culture, with three major world famous museum just at your doorstep: Van Gogh Museum, the Rijksmuseum and the Stedelijk Art Museum.

Hostel Van Gogh provides quality facilities and designed rooms, aimed at facilitating young travellers with little demand over the comfort and quality. Free Wi-Fi in all the house. The entire house is fully centrally air-conditioned and all rooms have LCD television and a modern bathroom equipped with hairdryer. hostel provides free bed linen, free shampoo and shower gel, free luggage storage, lift available , and all-you-can-eat continental breakfast buffet for only 5 euros ( 100% recommended by Visitors!!!)

Please note; our single rooms are with one bed and we can only accept one person for those bookings. We will not accept more than one person to be in single rooms.
For several individual bookings with different arrival date , and want stay in same room, due to nature of business, we wont make arrangement for your request . You have option to book a private room if that important for you !

From the hostel, you can reach the numerous bars, shops, clubs and other sights of the city very easily. If you like exciting nightlife, the entertainment zone Leidseplein is just five minutes' walking distance, where the famous clubs 'Paradiso', 'Melkweg', 'Jimmy Woo', or the recently renovated theatre 'DeLaMar' can be found.

There is no curfew. From January 2019, the new city tax will be 7% to be paid upon check-in. VAT (9%) is included. The total amount of your reservation needs to be paid upon check-in.

Bed linen is included

To ensure everyone's comfort, Please note that there is an age restriction ( 18 - 40 yo only ) for the mixed dorms . please book private room if you are not in this age range!

We do not accept any party groups, including bachelor or hen party groups! These groups will be refused at check in!!!

Reception for the hostel shared dorm rooms closes at 12:00 mid-night. If you are booking dorm beds and plan to arrive after this time, we cannot accomodate you.

If you booked a private room, please check in at Van Gogh hotel reception, the desk is open 24 hours.

This hostel does not have a private bike parking, and bikes are not allowed to carry into hostel !

Please see our Things to Note below before booking.

Check in from 15:00, check out til 11:00"
)


hostel8 = Hostel.create!(
  name: "We Love F. Tourists Hostel",
  address: 'R. dos Fanqueiros 267, 1100-230 Lisbon, Portugal',
  city_name: 'Lisbon',
  user: owner,
  photo1: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537324/photo-1531911120215-9f628dc6e9fc_g4kklo.jpg",
  photo2: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537379/photo-1477120292453-1cad512c7c44_abklyg.jpg",
  photo3: "https://res.cloudinary.com/dtnezxqpe/image/upload/v1558537437/photo-1541004995602-b3e898709909_vorsdj.jpg",
  description: "The Heart of the City…

Our 250 year old building has been refurbished entirely to provide the finest atmosphere and highest level of comfort in a meticulously clean environment. Experience the privilege of opening your window in the morning and looking out onto the iconic São Jorge Castle from the comfort of your bed, then enjoy our complete and delicious breakfast, which is prepared and cooked daily from early morning.

Before stepping out onto the most central streets of Baixa to begin your day, pass by reception and chat with our friendly staff who will help you plan ahead and tell you about the activity planned for that evening.

Our hostel provides you with two totally independent common areas. So whatever your mood you can find a place to relax and watch a movie or read a book from our comprehensive collection of both, as well as mingle and join in on the daily activity in the Lounge Bar. We offer a complete service with an inviting feel that allows you to enjoy Lisbon in an effortless and sociable way.

By the end of the day let us give you an iPad then prepare you a cup of tea to unwind and relax before the night´s activities begin. Don´t forget to write your memories on the roof before you check out.

So easy to find us, but not so easy to leave…"
)

30.times do
  Bed.create!(
  price: 10,
  room_type: "10 bed",
  hostel: hostel1
  )
end

16.times do
  Bed.create!(
  price: 15,
  room_type: "8 bed",
  hostel: hostel1
  )
end

18.times do
  Bed.create!(
  price: 20,
  room_type: "6 bed",
  hostel: hostel1
  )
end

4.times do
  Bed.create!(
  price: 25,
  room_type: "4 bed",
  hostel: hostel1
  )
end

50.times do
  Bed.create!(
  price: 40,
  room_type: "private",
  hostel: hostel1
  )
end

40.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel2
  )
end

24.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel2
  )
end

6.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel2
  )
end

16.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel2
  )
end

25.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel2
  )
end

10.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel3
  )
end

32.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel3
  )
end

24.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel3
  )
end

16.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel3
  )
end

10.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel3
  )
end

10.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel4
  )
end

8.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel4
  )
end

18.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel4
  )
end

40.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel4
  )
end

60.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel4
  )
end

100.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel5
  )
end

80.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel5
  )
end

36.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel5
  )
end

24.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel5
  )
end

30.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel5
  )
end

80.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel6
  )
end

80.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel6
  )
end

36.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel6
  )
end

8.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel6
  )
end

65.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel6
  )
end

10.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel7
  )
end

8.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel7
  )
end

36.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel7
  )
end

40.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel7
  )
end

35.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel7
  )
end

100.times do
  Bed.create!(
  price: 10.0,
  room_type: "10 bed",
  hostel: hostel8
  )
end

16.times do
  Bed.create!(
  price: 15.0,
  room_type: "8 bed",
  hostel: hostel8
  )
end

36.times do
  Bed.create!(
  price: 20.0,
  room_type: "6 bed",
  hostel: hostel8
  )
end

40.times do
  Bed.create!(
  price: 25.0,
  room_type: "4 bed",
  hostel: hostel8
  )
end

30.times do
  Bed.create!(
  price: 40.0,
  room_type: "private",
  hostel: hostel8
  )
end
