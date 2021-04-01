class Api::MoviesController < ApplicationController
  def index
    @movie = Movie.all
    # if params[:name]
    #   genre = Genre.find_by(name: params[:name])
    #   @movie = genre.movies
    # end
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
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
    @movie = Movie.find_by(id: params[:id])

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
    @movie = Movie.find_by(id: params[:id])

    if @movie.destroy
      render json: { message: "deleted movie" }
    else
      render json: { errors: @movie.errors.full_messages }, status: 406                       #sad path
    end
  end
end
