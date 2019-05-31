# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sibling.create(parent_id:1, first_name:"Mussia'le", last_name:"Shapiro", birthdate:Date.strptime('27-10-2007', '%d-%m-%Y'), points_earned:0)
Sibling.create(parent_id:1, first_name:"Menachem", last_name:"Shapiro", birthdate:Date.strptime('7-6-2009', '%d-%m-%Y'), points_earned:0)
Sibling.create(parent_id:1, first_name:"Hadassah'le", last_name:"Shapiro", birthdate:Date.strptime('16-2-2011', '%d-%m-%Y'), points_earned:0)
Sibling.create(parent_id:1, first_name:"Dovid", last_name:"Shapiro", birthdate:Date.strptime('7-5-2013', '%d-%m-%Y'), points_earned:0)
Sibling.create(parent_id:1, first_name:"Shneor", last_name:"Shapiro", birthdate:Date.strptime('11-9-2007', '%d-%m-%Y'), points_earned:0)
Sibling.create(parent_id:1, first_name:"Meir", last_name:"Shapiro", birthdate:Date.strptime('11-9-2007', '%d-%m-%Y'), points_earned:0)
