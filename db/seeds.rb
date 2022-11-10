require 'faker'

puts "Deleting old data..."
Account.destroy_all
Client.destroy_all
Job.destroy_all
Sitter.destroy_all
Category.destroy_all

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
location:"Nairobi",
email:"soila.torome@student.moringaschool.com",
phonenumber:Faker::PhoneNumber.cell_phone ,
password:"soilatorome")
Client.create(firstname:"Brian",lastname:"Wangombe",
  username:"brianwangombe",
  location:"Nakuru",

  email:"brian.wangombe@student.moringaschool.com",
  phonenumber:Faker::PhoneNumber.cell_phone ,
  password:"brianwangombe12"
)
puts "done seeding clients"

puts "now seeding sitters"
Sitter.create(first_name:"Queenslay",last_name:"Jema",
  user_name:"queenslayjema",
  gender:"Female",
  email:"queenslaynaila@student.moringaschool.com",
  phone_number:Faker::PhoneNumber.cell_phone ,
  year_of_birth: 2000,
  password:"queenslayjema",
  location:"Nairobi",
  age:22,
  category_id:1
 )
 Sitter.create(first_name:"Anne",last_name:"Mwangi",
  user_name:"annemwangi",
  gender:"Female",
  email:"ann.mwangi@student.moringaschool.com",
  phone_number:Faker::PhoneNumber.cell_phone ,
  year_of_birth:1996,
  password:"annemwangi02",
  location:"Nairobi",
  age:26,
  category_id:2
 )
 Sitter.create(first_name:"Daphney",last_name:"Mayer",
  user_name:"daphmayer",
  gender:"Female",
  email:"daph@student.moringaschool.com",
  phone_number:Faker::PhoneNumber.cell_phone ,
  year_of_birth:1996,
  password:"daph02",
  location:"Nairobi",
  age:26,
  category_id:3
 )
 puts "done seeding sitters"

puts "now seeding jobs"
Job.create(
  headline:"Looking for a sitter",
  date_posted:Faker::Time.backward(days: 5, period: :morning, format: :short), #=> "14 Oct 07:44",
  expires:Faker::Time.forward(days: 23, period: :morning),
  care_needed:"Baby Sitter",
  schedule:"daily",
  location:"Nairobi",
  sitter_id: 1,
  client_id: 1
)
Job.create(
  headline:"Looking for a nanny",
  date_posted:Faker::Time.backward(days: 5, period: :morning, format: :short), #=> "14 Oct 07:44",
  expires:Faker::Time.forward(days: 23, period: :morning),
  care_needed:"Baby Sitter",
  schedule:"daily",
  location:"Nakuru",
  sitter_id: 1,
  client_id:1
)
puts "done seeding jobs"

puts "seeding accounts!"
Client.all.each do |client|
  1.times do
    Account.create(
      username: client.username,
      password: client.password,
      usertype: "client",
      client_id: client.id,
      sitter_id: nil
    )
  end
end

puts "seeding accounts!"
Sitter.all.each do |sitter|
  1.times do
    Account.create(
      username: sitter.user_name,
      password: sitter.password,
      usertype: "sitter",
      client_id: nil,
      sitter_id: sitter.id
    )
  end
end
puts "seeding offers"
Offer.create(
  title:"Looking for anyone in need of a babysitter",
  name:"Queenslay",
  sitter_id:1,
  category_id:1,
  about:"I am a lover of all things caring",
  keyskills: "babysitting",
  gender:"female",
  additionalqualification:"certified first aid license",
  location: "Nairobi",
  availability:"available",
  education:"certificate",
  Languages:"English",
  workexperience:"3 years",
  email:"queenslay@gmail.com",
  phonenumber:"12345678",
  ratecharged:5000)
  Offer.create(
    title:"Looking for anyone in need of a pet care person",
    name:"Anne",
    sitter_id:2,
    category_id:2,
    about:"When im not coding im walking my dogs",
    keyskills: "excellent pet care",
    gender:"female",
    additionalqualification:"certified animal trainer",
    location: "Nairobi",
    availability:"available",
    education:"certificate",
    Languages:"English and French",
    workexperience:"5 years",
    email:"ann.mwangi@student.moringaschool.com",
    phonenumber:"12345678",
    ratecharged:8000)
puts "🌱 Done seeding!"
