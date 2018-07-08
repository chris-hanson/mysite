# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |i|
  Blog.create!(
    title: "My blog post #{i+1}",
    body: "Finite but unbounded quasar, intelligent beings cosmos, of brilliant syntheses not a sunrise but a galaxyrise dream of the mind's eye, astonishment. The carbon in our apple pies a billion trillion descended from astronomers two ghostly white figures in coveralls and helmets are soflty dancing prime number, across the centuries! Hydrogen atoms Apollonius of Perga. At the edge of forever birth made in the interiors of collapsing stars permanence of the stars ship of the imagination from which we spring Jean-Francois Champollion Euclid vastness is bearable only through love, quasar dream of the mind's eye ship of the imagination tesseract and billions upon billions upon billions upon billions upon billions upon billions upon billions."
  )
end

puts "10 blogs seeded"

5.times do |i|
  Skill.create!(
    title: "Rails #{i}",
    percent_utilised: 15
  )
end

puts "5 skills seeded"


9.times do |i|
  Portfolio.create!(
    title: "My awesome work #{i}",
    subtitle: "Subtitle text",
    body: "Descended from astronomers, hydrogen atoms made in the interiors of collapsing stars. Gathered by gravity. A billion trillion dream of the mind's eye network of wormholes. Extraordinary claims require extraordinary evidence take root and flourish venture the only home we've ever known not a sunrise but a galaxyrise encyclopaedia galactica Hypatia Sea of Tranquility inconspicuous motes of rock and gas cosmos Flatland, Drake Equation, gathered by gravity muse about Euclid, realm of the galaxies, the ash of stellar alchemy a billion trillion decipherment take root and flourish are creatures of the cosmos take root and flourish! Citizens of distant epochs. Euclid, gathered by gravity bits of moving fluff. Cosmos Euclid. Explorations!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end


puts "9 portfolios seeded"