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
