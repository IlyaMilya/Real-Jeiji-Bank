# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Account user_id:integer balance:float account_type

## User name email password
print "begin loading seeds just to see that "







c1 = Currency.create(name: "Ethereum", price: 3400.54, image:"public/ethereum_image.png")
c2 = Currency.create(name: "Bitcoin", price: 38394.31, image: "public/Bitcoin.jpeg")
c3 = Currency.create(name: "Cardano", price: 3.56, image: "public/Cardano.jpeg")


print "seeded CURRENCIES "

u1 = User.create(name: "Ilya", email: "imadyke@lamas.io", image: "sisja", username: "PatriciaLovesSnowFlakes24", password:"Warriorsin5")
u2 = User.create(name: "Jacky", email: "bananaslove@gmail.com", image: "sjaijaffas", username: "ImADyke", password:"loveRuby")
u3 = User.create(name: "Jerry", email: "heightmatter@aol", image:"93923u", username: "LaRamsAllDay", password: "shortguysdontmatter")
u4 = User.create(name: "Emmanuel", email: "hitme4photos@flicks.net", image: "38u823hr39", username:"Flyguy18", password: "excuse me mam")

print "seeded USERS"

save1 = Saving.create(user_id: u3.id, balance: 40)
save2 = Saving.create(user_id: u1.id, balance: 40000)
save3 = Saving.create(user_id: u4.id, balance: 3400)

print "seeded SAVINGSACC"

check1 = Checking.create(user_id: u1.id, balance: 543)
check2 = Checking.create(user_id: u4.id, balance: 493)
check3 = Checking.create(user_id: u3.id, balance: 1030)

print "seeded CHECKINGACC"

ex1 = Exchange.create(user_id: u3.id, balance: 42, first_cryp_id: c1.id , second_cryp_id: c2.id, third_cryp_id: c3.id)
ex2 = Exchange.create(user_id: u2.id, balance: 31319, first_cryp_id: c1.id , second_cryp_id: c2.id, third_cryp_id: c3.id)
ex3 = Exchange.create(user_id: u4.id, balance: 3944, first_cryp_id: c1.id , second_cryp_id: c2.id, third_cryp_id: c3.id)
ex4 = Exchange.create(user_id: u1.id, balance: 494933, first_cryp_id: c1.id , second_cryp_id: c2.id, third_cryp_id: c3.id)
print "seeding EXCHANGEACCOUNTS"

