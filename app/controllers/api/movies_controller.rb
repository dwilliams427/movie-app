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
      director: params[:director],
      english: params[:english],
    )
    #happy/sad path
    if @movie.save
      render "show_movie.json.jb"             #happy path
    else
      render json: { errors: @movie.errors.full_messages }, status: 406                       #sad path
    end
  end

  def update
    movie_title = params[:id]
    @movie = Movie.find_by(id: movie_title)

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english

    #happy/sad path
    if @movie.save
      render "show_movie.json.jb"             #happy path
    else
      render json: { errors: @movie.errors.full_messages }, status: 406                       #sad path
    end
  end

  def destroy
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)

    @movie.destroy
    render json: { message: "deleted movie" }
  end
end
