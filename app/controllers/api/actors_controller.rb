class Api::ActorsController < ApplicationController
  def index
    @actor = Actor.all.order(age: :asc)
    render "index.json.jb"
  end

  def show_actor
    actor_id = params[:id]
    @actor = Actor.find(actor_id)
    render "show_actor.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id],
    )
    #happy/sad path
    if @actor.save
      render "show_actor.json.jb"             #happy path
    else
      render json: { errors: @actor.errors.full_messages }, status: 406                       #sad path
    end
  end

  def update
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.movie_id = params[:movie_id] || @actor.movie_id
    @actor.age = params[:age] || @actor.age

    #happy/sad path
    if @actor.save
      render "show_actor.json.jb"             #happy path
    else
      render json: { errors: @actor.errors.full_messages }, status: 406                       #sad path
    end
  end

  def destroy
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)

    @actor.destroy
    render json: { message: "deleted actor" }
  end
end
