
print "Creating users... "

User.destroy_all
#
u1 = User.create!(
name: 'Jane Doe',
email: 'jane@jane.com',
password_digest: 'chicken',
dog_name: 'Huey',
dog_breed: 'Labrador',
vaccinated: 'true',
vet: 'Wooferines',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "labradore"
)
print "Creating dogparks... "

Dogpark.destroy_all

p1 = Dogpark.create!(
capacity: '6',
latitude: '-33.9068',
longitude: '151.171858'
)

print "Creating bookings... "
Booking.destroy_all

b1 = Booking.create!(
user_id: u1.id,
dogpark_id: p1.id,
booking_start_date: '2021-02-06 10:00',
booking_end_date: '2021-02-06 11:00',
report_card: 'A very good boy'
)
