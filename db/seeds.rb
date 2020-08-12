puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
air = { name: 'Air', address: '7 James St, London', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
fire = { name: 'Fire', address: '7 James St, London', description: 'A lovely summer feel for this spacious garden flat. One double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 90, number_of_guests: 2 }
earth = { name: 'Earth', address: '7 James St, London', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 100, number_of_guests: 4 }
water = { name: 'Water', address: '7 James St, London', description: 'A lovely summer feel for this spacious garden flat. One double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 90, number_of_guests: 2 }

[air, fire, earth, water].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
