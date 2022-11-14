# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
uri = URI.open("https://tmdb.lewagon.com/movie/top_rated").read
uri = JSON.parse(uri)
uri["results"].each do |el|
  Movie.create!(
    title: el["original_title"],
    overview: el["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500#{el['poster_path']}",
    rating: el["vote_average"]
  )
end

file = URI.open("https://res.cloudinary.com/du2lmmkva/image/upload/v1668417291/development/comedy_llpu9p.jpg")
list= List.create!(
  name: "Comedy"
)
list.photo.attach(io: file, filename: "comedy_llpu9p.jpeg")
file = URI.open("https://res.cloudinary.com/du2lmmkva/image/upload/v1668419258/development/sci-fi_n8j1ey.jpg")
list= List.create!(
  name: "Sci-Fi"
)
list.photo.attach(io: file, filename: "sci-fi_n8j1ey.jpeg")
file = URI.open("https://res.cloudinary.com/du2lmmkva/image/upload/v1668419258/development/romance_brxdx9.jpg")
list= List.create!(
  name: "Romance"
)
list.photo.attach(io: file, filename: "romance_brxdx9.jpeg")
file = URI.open("https://res.cloudinary.com/du2lmmkva/image/upload/v1668419258/development/horror_movie_liuddl.jpg")
list= List.create!(
  name: "Horror"
)
list.photo.attach(io: file, filename: "horror_movie_liuddl.jpeg")
