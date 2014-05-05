# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#50.times do |i|
#	Polititian.create name: "Nombre#{i}", last_name:"Apellido#{i}"
#end

Group.create(name: "Partido Popular")
Group.create(name: "PSOE")