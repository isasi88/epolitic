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
  # Add groups to iterate
  GROUPS = ["Partido Popular","PSOE","Podemos","IU","EH Bildu","Los Verdes","Antitaurino"]

  # We create an image rotation for politician group
group_image = lambda {
 @images ||= begin
   Dir[File.expand_path('../images/groups/*', __FILE__)]
 end
 @images.rotate!.first
}

  # Generate Groups
  GROUPS.each do |g|
    Group.create(name: g, description: Faker::Lorem.sentence(1), avatar: File.open(group_image.call))
  puts "Groups Created"
  end 

    # We create an image rotation for politician group
polititian_image = lambda {
 @p_images ||= begin
   Dir[File.expand_path('../images/polititians/*', __FILE__)]
 end
 @p_images.rotate!.first
}


    # Generate Polititians
  30.times do |p|
    Polititian.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, group_id: rand(1..5), avatar: File.open(polititian_image.call))
  puts "Politician Created"
  end 


