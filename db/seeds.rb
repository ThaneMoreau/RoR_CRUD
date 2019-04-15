# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! first_name: "Олег", last_name: "Храмцов", 
             email: "o.hramtsov@mail.com", phone: "88009001020"
             
User.create! first_name: "John", last_name: "Smith", 
             email: "j.smith@mail.com", phone: "83004002000"
             
User.create! first_name: "Fill", last_name: "Billing", 
             email: "f.billing@mail.com", phone: "88005001320"
             
User.create! first_name: "Frank", last_name: "Hilbert", 
             email: "f.hilbert@mail.com", phone: "89007001000"             
