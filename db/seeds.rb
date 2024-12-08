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

puts 'Creating 10 fake movies'

# movies = [
#   {
#     title: "Bienvenue chez les Ch'tis",
#     summary: "Un postier du sud de la France est muté dans le Nord, une région méconnue et pleine de surprises.",
#     actors: "Dany Boon, Kad Merad, Zoé Félix",
#     director: "Dany Boon",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/8/8b/Bienvenue_chez_les_Ch%27tis_poster.jpg"
#   },
#   {
#     title: "Les Bronzés font du ski",
#     summary: "Une bande d'amis se retrouve pour des vacances au ski, entre maladresses et quiproquos hilarants.",
#     actors: "Michel Blanc, Josiane Balasko, Thierry Lhermitte",
#     director: "Patrice Leconte",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/5/58/Les_Bronzes_font_du_ski.jpg"
#   },
#   {
#     title: "Qu'est-ce qu'on a fait au Bon Dieu ?",
#     summary: "Un couple bourgeois et conservateur est confronté aux mariages multiculturels de leurs filles.",
#     actors: "Christian Clavier, Chantal Lauby, Frédéric Chau",
#     director: "Philippe de Chauveron",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/2/22/Qu%27est-ce_qu%27on_a_fait_au_Bon_Dieu%3F_poster.jpg"
#   },
#   {
#     title: "Le Dîner de Cons",
#     summary: "Un éditeur organise un dîner où chaque invité doit amener un idiot, mais les choses ne se passent pas comme prévu.",
#     actors: "Thierry Lhermitte, Jacques Villeret, Francis Huster",
#     director: "Francis Veber",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/1/1b/Le_diner_de_cons.jpg"
#   },
#   {
#     title: "Intouchables",
#     summary: "Un riche tétraplégique engage un aide-soignant de banlieue, créant une amitié improbable.",
#     actors: "Omar Sy, François Cluzet, Anne Le Ny",
#     director: "Olivier Nakache, Éric Toledano",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/9/93/The_Intouchables.jpg"
#   },
#   {
#     title: "Les Visiteurs",
#     summary: "Un chevalier et son écuyer se retrouvent propulsés au XXe siècle par accident.",
#     actors: "Jean Reno, Christian Clavier, Valérie Lemercier",
#     director: "Jean-Marie Poiré",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/5/5a/Les_Visiteurs_poster.jpg"
#   },
#   {
#     title: "Le Père Noël est une ordure",
#     summary: "Une nuit de Noël déjantée dans une permanence téléphonique pour personnes en détresse.",
#     actors: "Anémone, Thierry Lhermitte, Gérard Jugnot",
#     director: "Jean-Marie Poiré",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/3/3c/Le_P%C3%A8re_No%C3%ABl_est_une_ordure.jpg"
#   },
#   {
#     title: "La Grande Vadrouille",
#     summary: "Un peintre et un chef d'orchestre aident des aviateurs britanniques à échapper aux nazis.",
#     actors: "Louis de Funès, Bourvil, Claudio Brook",
#     director: "Gérard Oury",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/7/71/La_Grande_Vadrouille.jpg"
#   },
#   {
#     title: "Radin!",
#     summary: "Un violoniste maladivement radin voit sa vie chamboulée par l'arrivée d'une fille qu'il ignorait avoir.",
#     actors: "Dany Boon, Laurence Arné, Noémie Schmidt",
#     director: "Fred Cavayé",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/9/9d/Radin%21_poster.jpg"
#   },
#   {
#     title: "Les Tuche",
#     summary: "Une famille modeste devient millionnaire grâce au loto et découvre les joies et difficultés de la richesse.",
#     actors: "Jean-Paul Rouve, Isabelle Nanty, Claire Nadeau",
#     director: "Olivier Baroux",
#     # image_url: "https://upload.wikimedia.org/wikipedia/en/4/48/Les_Tuche.jpg"
#   }
# ]

# movies.each do |movie|
#   Movie.create!(movie)
# end

movie = Movie.new(title: "Bienvenue chez les Ch'tis", summary: "Un postier du sud de la France est muté dans le Nord, une région méconnue et pleine de surprises.", actors: "Dany Boon, Kad Merad, Zoé Félix", director: "Dany Boon", image_url: "https://upload.wikimedia.org/wikipedia/en/8/8b/Bienvenue_chez_les_Ch%27tis_poster.jpg")
movie.save!

movie = Movie.new(title: "Les Bronzés font du ski", summary: "Une bande d'amis se retrouve pour des vacances au ski, entre maladresses et quiproquos hilarants.", actors: "Michel Blanc, Josiane Balasko, Thierry Lhermitte", director: "Patrice Leconte", image_url: "https://upload.wikimedia.org/wikipedia/en/5/58/Les_Bronzes_font_du_ski.jpg")
movie.save!

movie = Movie.new(title: "Qu'est-ce qu'on a fait au Bon Dieu ?", summary: "Un couple bourgeois et conservateur est confronté aux mariages multiculturels de leurs filles.", actors: "Christian Clavier, Chantal Lauby, Frédéric Chau", director: "Philippe de Chauveron", image_url: "https://upload.wikimedia.org/wikipedia/en/2/22/Qu%27est-ce_qu%27on_a_fait_au_Bon_Dieu%3F_poster.jpg")
movie.save!

movie = Movie.new(title: "Le Dîner de Cons", summary: "Un éditeur organise un dîner où chaque invité doit amener un idiot, mais les choses ne se passent pas comme prévu.", actors: "Thierry Lhermitte, Jacques Villeret, Francis Huster", director: "Francis Veber", image_url: "https://upload.wikimedia.org/wikipedia/en/1/1b/Le_diner_de_cons.jpg")
movie.save!

movie = Movie.new(title: "Intouchables", summary: "Un riche tétraplégique engage un aide-soignant de banlieue, créant une amitié improbable.", actors: "Omar Sy, François Cluzet, Anne Le Ny", director: "Olivier Nakache, Éric Toledano", image_url: "https://upload.wikimedia.org/wikipedia/en/9/93/The_Intouchables.jpg")
movie.save!



puts "Comédies françaises ajoutées à la base de données!"
