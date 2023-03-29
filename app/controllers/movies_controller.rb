class MoviesController < ApplicationController

  def movie_list
    @list_of_movies = Movie.all

    render({ :template => "movie_template/movie_list.html.erb" })
  end

  def movie_details
    the_id = params.fetch("movie_id")
    @movie = Movie.where({ :id => the_id }).at(0)

    render({ :template => "movie_template/movies.html.erb" })
  end
end
