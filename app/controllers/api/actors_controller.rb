class Api::ActorsController < ApplicationController
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
    )
    @actor.save
    render "show_actor.json.jb"
  end

  def update
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for

    @actor.save
    render "show_actor.json.jb"
  end

  def destroy
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)

    @actor.destroy
    render json: { message: "deleted actor" }
  end
end
