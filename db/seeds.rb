# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



L1 = Landlord.create(first_name: "Luca", last_name:"rossi", email: "luca@email.com", password_digest: "luca1",)

p1 = Property.create(address: "strett1", landlord_id: L1.id, rooms:2)
p2 = Property.create(address: "strett4", landlord_id: L1.id, rooms:5)




t1 = Tenant.create(first_name: "Alex", last_name: "J", email: "alex@mail.com", property_id: p1.id, password_digest: "alex1")
t2 = Tenant.create(first_name: "Mustafa", last_name: "M", email: "Mustafa@mail.com", property_id: p1.id, password_digest: "musta1")

t3 = Tenant.create(first_name: "test1", last_name: "t1", email: "test1@mail.com", property_id: p2.id, password_digest: "test1")
t4 = Tenant.create(first_name: "test2", last_name: "t2", email: "test2@mail.com", property_id: p2.id, password_digest: "test2")
t5 = Tenant.create(first_name: "test3", last_name: "t3", email: "test3@mail.com", property_id: p2.id, password_digest: "test3")
t6 = Tenant.create(first_name: "test4", last_name: "t4", email: "test4@mail.com", property_id: p2.id, password_digest: "test4")

todo1 = Todo.create(message: "pay rent please", isCompleted: false, property_id: p1.id)
todo2 = Todo.create(message: "do this test1", isCompleted: false, property_id: p1.id)
todo3 = Todo.create(message: " do that test2", isCompleted: true , property_id: p1.id)
todo4 = Todo.create(message: " vist on Monday3", isCompleted: true , property_id: p2.id)
todo5 = Todo.create(message: "do that on 3rd of March", isCompleted: false , property_id: p2.id)
todo6 = Todo.create(message: " pay the bills", isCompleted: true , property_id: p2.id)


Issue.create(property_id: p1.id, message: "boiler broke", priority: 3, isCompleted: false, tenant_id: t1.id)
Issue.create(property_id: p1.id, message: "boiler lap", priority: 2, isCompleted: true, tenant_id: t2.id)
Issue.create(property_id: p1.id, message: "boiler sofa", priority: 1, isCompleted: false, tenant_id: t3.id)
Issue.create(property_id: p1.id, message: "boiler tap", priority: 1, isCompleted: true, tenant_id: t4.id)
Issue.create(property_id: p2.id, message: "boiler shower", priority: 1, isCompleted: false, tenant_id: t5.id)
Issue.create(property_id: p2.id, message: "boiler bulp", priority: 3, isCompleted: true, tenant_id: t6.id)
Issue.create(property_id: p2.id, message: "boiler door", priority: 3, isCompleted: false, tenant_id: t2.id)
Issue.create(property_id: p2.id, message: "boiler chair", priority: 2, isCompleted: true, tenant_id: t3.id)
Issue.create(property_id: p2.id, message: "boiler monitor", priority: 3, isCompleted: false, tenant_id: t1.id)


