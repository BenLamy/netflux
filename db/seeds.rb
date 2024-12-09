# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.destroy_all

require "open-uri"

file = URI.parse("https://fr.web.img5.acsta.net/c_310_420/medias/nmedia/18/36/10/96/19649758.jpg").open
movie = Movie.new(title: "Le Dîner de Cons", summary: "Un éditeur organise un dîner où chaque invité doit amener un idiot, mais les choses ne se passent pas comme prévu.", actors: "Thierry Lhermitte, Jacques Villeret, Francis Huster", director: "Francis Veber")
movie.photo.attach(io: file, filename: "dinerdecons.png", content_type: "image/png")
movie.save!

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/9/93/The_Intouchables.jpg").open
movie = Movie.new(title: "Intouchables", summary: "Un riche tétraplégique engage un aide-soignant de banlieue, créant une amitié improbable.", actors: "Omar Sy, François Cluzet, Anne Le Ny", director: "Olivier Nakache, Éric Toledano")
movie.photo.attach(io: file, filename: "intouchables.png", content_type: "image/png")
movie.save!

file = URI.parse("https://fr.web.img5.acsta.net/medias/nmedia/18/64/74/53/18889951.jpg").open
movie = Movie.new(title: "Bienvenue chez les Ch'tis", summary: "Un postier du sud de la France est muté dans le Nord, une région méconnue et pleine de surprises.", actors: "Dany Boon, Kad Merad, Zoé Félix", director: "Dany Boon")
movie.photo.attach(io: file, filename: "chti.png", content_type: "image/png")
movie.save!

file = URI.parse("https://fr.web.img2.acsta.net/pictures/17/01/17/16/24/593647.jpg").open
movie = Movie.new(title: "Les Bronzés font du ski", summary: "Une bande d'amis se retrouve pour des vacances au ski, entre maladresses et quiproquos hilarants.", actors: "Michel Blanc, Josiane Balasko, Thierry Lhermitte", director: "Patrice Leconte")
movie.photo.attach(io: file, filename: "bronzes.png", content_type: "image/png")
movie.save!

file = URI.parse("https://fr.web.img2.acsta.net/pictures/14/03/04/14/58/474265.jpg").open
movie = Movie.new(title: "Qu'est-ce qu'on a fait au Bon Dieu ?", summary: "Un couple bourgeois et conservateur est confronté aux mariages multiculturels de leurs filles.", actors: "Christian Clavier, Chantal Lauby, Frédéric Chau", director: "Philippe de Chauveron")
movie.photo.attach(io: file, filename: "bondieu.png", content_type: "image/png")
movie.save!


puts "Comédies françaises ajoutées à la base de données!"
