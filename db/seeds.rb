require 'faker'
puts "🌱 Seeding data..."

puts "seeding categories"
Category.create(name: "Baby Sitter")
Category.create(name: "Pet care Provider")
Category.create(name: "Care companion")
Category.create(name: "Special needs")
puts "complete"

puts "seeding clients"
Client.create(firstname:"Soila",lastname:"Torome",
username:"soilatorome",
location:"Nairobi"
email:"soila.torome@student.moringaschool.com",
phonenumber:Faker::PhoneNumber.cell_phone ,
password:"soilatorome")
Client.create(firstname:"Brian",lastname:"Wangombe",
  username:"brianwangombe",
  location:"Nakuru"
  email:"brian.wangombe@student.moringaschool.com",
  phonenumber:Faker::PhoneNumber.cell_phone ,
  password:"brianwangombe12"
)
puts "done seeding clients"

puts "now seeding sitters"
Sitter.create(firstname:"Queenslay",lastname:"Jema",
  username:"queenslayjema",
  gender:"Female",
  email:"queenslaynaila@student.moringaschool.com",
  phonenumber:Faker::PhoneNumber.cell_phone ,
  yearOfBirth: 2000,
  password:"queenslayjema",
  location:"Nairobi",
  age:22,
  category_id:1
 )
 Sitter.create(firstname:"Anne",lastname:"Mwangi",
  username:"annemwangi",
  gender:"Female",
  email:"ann.mwangi@student.moringaschool.com",
  phonenumber:Faker::PhoneNumber.cell_phone ,
  yearOfBirth:1996,
  password:"annemwangi02",
  location:"Nairobi",
  age:26,
  category_id:2
 )
 puts "done seeding sitters"

puts "now seeding jobs"
Job.create(
  dateposted:Faker::Time.backward(days: 5, period: :morning, format: :short) #=> "14 Oct 07:44",
  expires:Faker::Time.forward(days: 23, period: :morning),
  careneeded:"Baby Sitter",
  schedule:"daily",
  location:"Nairobi"
)
Job.create(
  dateposted:Faker::Time.backward(days: 5, period: :morning, format: :short) #=> "14 Oct 07:44",
  expires:Faker::Time.forward(days: 23, period: :morning),
  careneeded:"Baby Sitter",
  schedule:"daily",
  location:"Nakuru",
  client_id:1
)
puts "done seeding jobs"
puts "🌱 Done seeding!"
