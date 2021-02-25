class Api::MoviesController < ApplicationController
  require "http"

  def get_all_movies
    @all_movies = Movie.all
    render "all_movies.json.jb"
  end

  def get_movie_by_id
    @movie = Movie.find_by(id: 3)
    render "first_movie.json.jb"
  end
end
