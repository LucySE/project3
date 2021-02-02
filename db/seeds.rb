
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
print "Creating dogparks... "

Dogpark.destroy_all

p1 = Dogpark.create!(
capacity: '6',
latitude: '-33.9067975',
longitude: '151.1717846',
dogpark_name: 'Marrickville Metro',
dogpark_address: '20 Smidmore St, Marrickville NSW 2204'
)
p2 = Dogpark.create!(
capacity: '6',
latitude: '-33.8915695',
longitude: '151.2483125',
dogpark_name: 'Westfield Bondi Junction',
dogpark_address: '500 Oxford St, Bondi Junction NSW 2022'
)
p3 = Dogpark.create!(
capacity: '6',
latitude: '-33.9224903',
longitude: '151.16342',
dogpark_name: 'Ikea Tempe',
dogpark_address: '634-726 Princes Hwy, Tempe NSW 2044'
)
p4 = Dogpark.create!(
capacity: '6',
latitude: '-33.8923582',
longitude: '151.2737011',
dogpark_name: 'Bondi Beach',
dogpark_address: 'Bondi Beach NSW 2026'
)
p5 = Dogpark.create!(
capacity: '6',
latitude: '-33.825567',
longitude: '151.2399833',
dogpark_name: 'Mosman Library',
dogpark_address: '605 Military Rd, Mosman NSW 2088'
)
p6 = Dogpark.create!(
capacity: '6',
latitude: '-34.0657676',
longitude: '150.8136869',
dogpark_name: 'Mawson Park, Campbelltown',
dogpark_address: 'Queen St, Campbelltown NSW 2560'
)
p7 = Dogpark.create!(
capacity: '6',
latitude: '-34.0408061',
longitude: '151.0634465',
dogpark_name: 'Helena Street Dog Park',
dogpark_address: 'Helena St, Kirrawee NSW 2232'
)
p8 = Dogpark.create!(
capacity: '6',
latitude: '-33.8748755',
longitude: '151.1987113',
dogpark_name: 'Darling Harbour',
dogpark_address: 'Darling Harbour, Sydney NSW 2000'
)

print "Creating bookings... "
Booking.destroy_all

b1 = Booking.create!(
user_id: u1.id,
dogpark_id: p1.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'A very good boy',
photo: 'https://unsplash.com/photos/vI-5_EIhQLU'
)
b2 = Booking.create!(
user_id: u2.id,
dogpark_id: p2.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'naughty',
photo: 'https://unsplash.com/photos/tGBRQw52Thw'
)
b3 = Booking.create!(
user_id: u3.id,
dogpark_id: p3.id,
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
