puts 'destroying db...'
Movie.destroy_all
puts 'done destroying everything... MUHAHAHA'
puts 'downloading Movies from far far away....'

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movies = JSON.parse(movie_serialized)['results']

movies.each do |movie|
  Movie.create!(
    title: movie['original_title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end
puts 'donwloading done ! enjoy :)'
