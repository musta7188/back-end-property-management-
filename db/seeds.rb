# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



L1 = Landlord.create(first_name: "Luca", last_name:"rossi", email: "luca@email.com", password_digest: "luca1",)

p1 = Property.create(address: "strett1", landlord: L1, rooms:2)
p2 = Property.create(address: "strett4", landlord: L1, rooms:5)




t1 = Tenant.create(first_name: "Alex", last_name: "J", email: "alex@mail.com", property: p1, password_digest: "alex1")
t2 = Tenant.create(first_name: "Mustafa", last_name: "M", email: "Mustafa@mail.com", property: p1, password_digest: "musta1")

t3 = Tenant.create(first_name: "test1", last_name: "t1", email: "test1@mail.com", property: p2, password_digest: "test1")
t4 = Tenant.create(first_name: "test2", last_name: "t2", email: "test2@mail.com", property: p2, password_digest: "test2")
t5 = Tenant.create(first_name: "test3", last_name: "t3", email: "test3@mail.com", property: p2, password_digest: "test3")
t6 = Tenant.create(first_name: "test4", last_name: "t4", email: "test4@mail.com", property: p2, password_digest: "test4")