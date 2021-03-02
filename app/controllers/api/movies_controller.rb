class Api::MoviesController < ApplicationController
  def show_movie
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
    render "show_movie.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    @movie.save
    render "show_movie.json.jb"
  end

  def update
    movie_title = params[:id]
    @movie = Movie.find_by(id: movie_title)

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot

    @movie.save
    render "show_movie.json.jb"
  end

  def destroy
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)

    @movie.destroy
    render json: { message: "deleted movie" }
  end
end
