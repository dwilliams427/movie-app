Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/get_actor" => "actors#get_actor_by_id"
    get "/get_movie" => "movies#get_movie_by_id"
    get "/get_movies" => "movies#get_all_movies"
  end
end
