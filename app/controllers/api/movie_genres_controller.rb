class Api::MovieGenresController < ApplicationController
  def create
    @movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    #happy/sad path
    if @movie_genre.save
      # render "show_movie_genre.json.jb"             #happy path
      render json: { message: "movie gnere created" }
    else
      render json: { errors: @movie_genre.errors.full_messages }, status: 406                       #sad path
    end
  end
end
