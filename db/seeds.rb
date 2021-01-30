print "Creating Users... "
  User.destroy_all
#
u1 = User.create!(
name: 'Jane Doe',
email: 'jane@jane.com',
password_digest:  'chicken',
dog_name: 'Huey',
dog_breed: 'Labrador',
vaccinated: 'true',
vet: 'Wooferines',
vaccination_certificate: "https://res.cloudinary.com/do9y9tnbr/image/upload/v1612003377/dogpark_vaccinations/Hueysvaccinations_mncxki.pdf",
username: "labradore"
)
d1 = Dogpark.create!(
  capacity: '6',
  latitude: '-33.9068',
  longitude: '151.171858'
)
b1 = Booking.create!(
  user_id: '1',
  park_id: '2',
  booking_start_date: '2021-06-02 10:00',
  booking_end_date: '2021-06-02 11:00',
  report_card: 'A very good boy',
  photo: 'https://unsplash.com/photos/PUY5xUszd3Y'
)
