# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create email: 'sam@consultio.io', name:'sam', password: 'chicken'

puts "Created #{User.all.length} users."


Category.destroy_all

c1 = Category.create investment_type: 'Low Risk', image: 'www.url.com'
c2 = Category.create investment_type: 'Medium Risk', image: 'www.url.com'
c3 = Category.create investment_type: 'High Risk', image: 'www.url.com'

puts "Created #{Category.all.length} categories."

Hunch.destroy_all

h1 = Hunch.create name:'Term Deposit', category: c1, api: '_embeded_code_'
h2 = Hunch.create name:'Stocks', category: c2, api: '_embeded_code_'
h3 = Hunch.create name:'Real Estate', category: c3, api: '_embeded_code_'

h4 = Hunch.create name:'Lead', category: c1, api: '_embeded_code_'
h5 = Hunch.create name:'Copper', category: c2, api: '_embeded_code_'
h6 = Hunch.create name:'Durian', category: c3, api: '_embeded_code_'

h7 = Hunch.create name:'Weapon Grade Plutonium', category: c1, api: '_embeded_code_'
h8 = Hunch.create name:'Crypto Currencies', category: c2, api: '_embeded_code_'
h9 = Hunch.create name:'Roulette', category: c3, api: '_embeded_code_'

puts "Created #{Hunch.all.length} hunches."

c1.hunches << h1 << h2 << h3
c1.hunches << h4 << h5 << h6
c1.hunches << h7 << h8 << h9
