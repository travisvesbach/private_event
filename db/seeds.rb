# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "The Dude")

5.times do
	User.create(name: "#{Faker::Name.name}")
end


event1 = Event.create(	name: "House Party!",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "My place",
				description: "Party at my place! Woo!",
				creater: User.find(2) )

event1.attendees.push(User.find(3), User.find(2), User.find(6), User.find(4))

event2 = Event.create(	name: "Camping",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "Mountain State Park",
				description: "Are you all ready for some camping and hiking fun?? We would like to get up there Friday afternoon, grill out with a bonfire, etc. Some of us are planning on getting up early on Saturday morning in order to get to a nice viewpoint for the sunrise.",
				creater: User.find(1) )

event2.attendees.push(User.find(1), User.find(2), User.find(4), User.find(5))

event3 = Event.create(	name: "Swimming",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "Blue Lake",
				description: "Join us for an afternoon of fun at the lake!",
				creater: User.find(5) )

event3.attendees.push(User.find(5), User.find(4), User.find(2))

event4 = Event.create(	name: "Game night!",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "My place",
				description: "Time to bust out some board games!",
				creater: User.find(3) )

event4.attendees.push(User.find(3), User.find(6), User.find(5))

event5 = Event.create(	name: "Fireworks",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "Watertower Park",
				description: "The Fire Department is putting on a fireworks show!  Let's head down to the park and have a good time!",
				creater: User.find(1) )

event5.attendees.push(User.find(1), User.find(2), User.find(3), User.find(4), User.find(5), User.find(6))

event6 = Event.create(	name: "Archery",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "Red Pines Archery",
				description: "I taked with them about a group rate for us to go out and do some archery! We can grab dinner afterwards too.  There is a nice diner near there.",
				creater: User.find(4) )

event6.attendees.push(User.find(4), User.find(3), User.find(2))

event7 = Event.create(	name: "Concert",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "Downtown Concert Hall",
				description: "The state orchestra will be in town putting on a show!",
				creater: User.find(5) )

event7.attendees.push(User.find(5), User.find(6), User.find(3))

event8 = Event.create(	name: "Moving",
				date: Faker::Date.between_except(2.months.ago, 2.months.from_now, Date.today),
				place: "My place to my new place",
				description: "As you all know, I am moving soon.  Some of you talked about helping me move, and I figured this was the best way to let everyone know.  Thanks for helping me! :)",
				creater: User.find(6) )

event8.attendees.push(User.find(6), User.find(2), User.find(5), User.find(1))

