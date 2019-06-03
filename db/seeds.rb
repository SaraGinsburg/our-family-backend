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

dovid.milestones.create(when:"2019-06-02", what:"birthday party with friends", picture:"https://photos.google.com/album/AF1QipPKge-I_LCyoOtJ6C2dYHOswQysH3mo76htEE53")
dovid.niceDeed(when:"2019-05-24", what:"shared his chocolate bar with Menachem", to_whom: "Menachem", points:1 )
mussiale = Sibling.find(7)
menachem = Sibling.find(8)
hadassah = Sibling.find(9)
dovid = Sibling.find(10)
shneor= Sibling.find(11)
meir= Sibling.find(12)
