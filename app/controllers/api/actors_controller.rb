class Api::ActorsController < ApplicationController
  def get_actor_by_id
    @actor = Actor.find_by(id: 3)
    render "actor.json.jb"
  end
end
