
print "Creating users... "

User.destroy_all
#
u1 = User.create!(
name: 'Jane Doe',
email: 'jane@jane.com',
password: 'chicken',
dog_name: 'Huey',
dog_breed: 'Labrador',
vaccinated: 'true',
vet: 'Wooferines',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "labradore"
)
u2 = User.create!(
name: 'Joe Bloggs',
email: 'joe@joe.com',
password: 'chicken',
dog_name: 'Bingo',
dog_breed: 'Poodle',
vaccinated: 'true',
vet: 'AMS',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "bingo123"
)
u3 = User.create!(
name: 'Bonnie Scott',
email: 'bill@bill.com',
password: 'chicken',
dog_name: 'Fido',
dog_breed: 'West Highland White Terrier',
vaccinated: 'true',
vet: 'Vetso',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "Westies4eva"
)
u4 = User.create!(
name: 'Harry Sharp',
email: 'harry@harry.com',
password: 'chicken',
dog_name: 'Trevor',
dog_breed: 'Husky',
vaccinated: 'true',
vet: 'Pack of dogs',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "Cairns"
)
u5 = User.create!(
name: 'James Coogan',
email: 'james@james.com',
password: 'chicken',
dog_name: 'Alan',
dog_breed: 'Border Collie',
vaccinated: 'true',
vet: 'all the dogs',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "coogans"
)
u6 = User.create!(
name: 'Bilbo Baggins',
email: 'bilbo@bilbo.com',
password: 'chicken',
dog_name: 'Gandalf',
dog_breed: 'Pomeranian',
vaccinated: 'true',
vet: 'Pack of dogs',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "Pommie"
)
u7 = User.create!(
name: 'Leonard Cohen',
email: 'leonard@leonard.com',
password: 'chicken',
dog_name: 'Lennys',
dog_breed: 'Pug',
vaccinated: 'true',
vet: 'Pack of dogs',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "Puggy"
)
u8 = User.create!(
name: 'Becky Nova',
email: 'becky@becky.com',
password: 'chicken',
dog_name: 'planet',
dog_breed: 'Doberman',
vaccinated: 'true',
vet: 'Pack of dogs',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "BeckyN"
)
u9 = User.create!(
name: 'Lucy',
email: 'Lucy@lucy.com',
password: 'chicken',
dog_name: 'Bonnie Scot-Wirth',
dog_breed: 'West Highland White Terrier',
vaccinated: 'true',
vet: 'AMS',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "Lucy"
)

puts "Created #{ User.count } users:"

print "Creating dogparks... "

Dogpark.destroy_all

p1 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Marrickville Metro',
dogpark_address: '20 Smidmore St, Marrickville NSW 2204'
)
p2 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Westfield Bondi Junction',
dogpark_address: '500 Oxford St, Bondi Junction NSW 2022'
)
p3 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Ikea Tempe',
dogpark_address: '634-726 Princes Hwy, Tempe NSW 2044'
)
p4 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Bondi Beach',
dogpark_address: 'Bondi Beach NSW 2026'
)
p5 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Mosman Library',
dogpark_address: '605 Military Rd, Mosman NSW 2088'
)
p6 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Mawson Park, Campbelltown',
dogpark_address: 'Queen St, Campbelltown NSW 2560'
)
p7 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Helena Street Dog Park',
dogpark_address: 'Helena St, Kirrawee NSW 2232'
)
p8 = Dogpark.create!(
capacity: '6',
dogpark_name: 'Darling Harbour',
dogpark_address: 'Darling Harbour, Sydney NSW 2000'
)

print "Creating bookings... "
Booking.destroy_all

b1 = Booking.create!(
user_id: u9.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'A very good boy',
photo: 'https://res.cloudinary.com/do9y9tnbr/image/upload/v1612411824/tuva-mathilde-loland-vI-5_EIhQLU-unsplash_qtaeq8.jpg'
)
b2 = Booking.create!(
user_id: u2.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'naughty',
photo: 'https://unsplash.com/photos/tGBRQw52Thw'
)
b3 = Booking.create!(
user_id: u3.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'ok',
photo: 'https://unsplash.com/photos/sirEpWjfSmo'
)
b4 = Booking.create!(
user_id: u4.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'banned',
photo: 'https://unsplash.com/photos/NzdjuGxj_18'
)
b5 = Booking.create!(
user_id: u5.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'banned',
photo: 'https://unsplash.com/photos/NzdjuGxj_18'
)
b6 = Booking.create!(
user_id: u6.id,
dogpark_id: p4.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'banned',
photo: 'https://unsplash.com/photos/NzdjuGxj_18'
)
b7 = Booking.create!(
user_id: u7.id,
dogpark_id: p2.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'banned',
photo: 'https://unsplash.com/photos/NzdjuGxj_18'
)
b8 = Booking.create!(
user_id: u8.id,
dogpark_id: p2.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'lovely girl',
photo: 'https://res.cloudinary.com/do9y9tnbr/image/upload/v1612411824/tuva-mathilde-loland-vI-5_EIhQLU-unsplash_qtaeq8.jpg'
)
b9 = Booking.create!(
user_id: u4.id,
dogpark_id: p3.id,
booking_start_date: '2021-02-06 12:00',
booking_end_date: '2021-02-06 13:00',
report_card: 'banned',
photo: 'https://res.cloudinary.com/do9y9tnbr/image/upload/v1612432344/gabe-rebra-NzdjuGxj_18-unsplash_hxkvqb.jpg'
)
