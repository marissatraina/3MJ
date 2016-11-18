# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cohort.delete_all
User.delete_all
Pitch.delete_all
R1votes.delete_all
R2votes.delete_all


coyotes = Cohort.create(name:'Coyotes')
wolves = Cohort.create(name:'Wolves')

jason = User.create(name:'jason', email:'jason@gmail.com', password:'jason', admin:false, cohort: "coyotes")
marissa = User.create(name:'marissa', email:'marissa@gmail.com', password:'marissa', admin:false, cohort: "coyotes")

pitch1 = Pitch.create(user:jason, round_id:1, title:'Pitch Here', text:'amazing pitch' )
pitch2 = Pitch.create(user:jason, round_id:1, title:'New Pitch Here', text:'amazinger pitch' )
pitch3 = Pitch.create(user:marissa, round_id:1, title:'Best Pitch', text:'proper english pitch' )
