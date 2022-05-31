# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Account user_id:integer balance:float account_type

## User name email password

u1 = User.create(name: "Ilya", email: "imadyke@lamas.io", password:"Warriorsin5")
u2 = User.create(name: "Jacky", email: "bananaslove@gmail.com", password:"loveRuby")
u3 = User.create(name: "Jerry", email: "heightmatter@aol", password: "shortguysdontmatter")
u4 = User.create(name: "Emmanuel", email: "hitme4photos@flicks.net", password: "excuse me mam")

a1 = Account.create(user_id: u1.id, balance: 500.50, account_type: "checking")
a2 = Account.create(user_id: u3.id, balance: 130.69, account_type: "savings")
a3 = Account.create(user_id: u2.id, balance: 30.31, account_type: "exchange")
a4 = Account.create(user_id: u1.id, balance: 35000.00, account_type: "checking")
a5 = Account.create(user_id: u3.id, balance: 620, account_type: "checking")
a6 = Account.create(user_id: u4.id, balance: 300000, account_type: "savings")
a7 = Account.create(user_id: u2.id, balance: 116, account_type: "checking")
a8 = Account.create(user_id: u4.id, balance: 1000000, account_type: "checking")

