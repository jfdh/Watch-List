List.destroy_all
Movie.destroy_all

url = "http://tmdb.lewagon.com/movie/top_rated"
movies_string = open(url).read
movies = JSON.parse(movies_string)
movie_results = movies['results']
movie_poster = "https://image.tmdb.org/t/p/w500"
movie_results.each do |movie|
  new_movie = Movie.create(title: movie['title'], overview: movie['overview'], poster_url: movie_poster + movie['poster_path'], rating: movie['vote_average'])
  puts "#{new_movie.title} has been created!"
  p new_movie
  new_movie.save!

end
