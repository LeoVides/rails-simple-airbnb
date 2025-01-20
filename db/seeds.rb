# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Cleanig DB
puts "Cleaning DB"
Flat.destroy_all

# Generating flats
puts "Generating Flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Cozy Riverside Studio in Paris',
  address: '15 Rue de Seine, Paris, France',
  description: 'Charming studio with views of the Seine, perfect for a romantic getaway. Features a comfortable double bed, a kitchenette, and a small balcony.',
  price_per_night: 90,
  number_of_guests: 2
)
Flat.create!(
  name: 'Modern Downtown Apartment NYC',
  address: '200 Fifth Avenue, New York, NY 10010, USA',
  description: 'Stylish apartment in the heart of Manhattan. One bedroom, fully equipped kitchen, spacious living area, and walking distance to major attractions.',
  price_per_night: 120,
  number_of_guests: 4
)
Flat.create!(
  name: 'Seaside Cottage in Cornwall',
  address: '23 Coastal Road, Cornwall TR11 4AA, UK',
  description: 'A cozy retreat by the sea with stunning views. Two bedrooms, a fully stocked kitchen, and a charming garden for al fresco dining.',
  price_per_night: 85,
  number_of_guests: 4
)

# Success message
puts "Flats created"
