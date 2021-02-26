class Api::ActorsController < ApplicationController
  def get_actor_by_id
    input = params[:actor]
    @actor = Actor.find_by(first_name: input)
    render "actor.json.jb"
  end
end
