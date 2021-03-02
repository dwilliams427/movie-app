Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #actors routes
    #RESTful show
    get "/actors/:id", controller: "actors", action: "show_actor"

    #RETSful create
    post "/actors", controller: "actors", action: "create"

    #RESTful update
    patch "/actors/:id", controller: "actors", action: "update"

    #RESTful delete
    delete "/actors/:id", controller: "actors", action: "destroy"

    #movies routes
    #RESTful show
    get "/movies/:id", controller: "movies", action: "show_movie"

    #RETSful create
    post "/movies", controller: "movies", action: "create"

    #RESTful update
    patch "/movies/:id", controller: "movies", action: "update"

    #RESTful delete
    delete "/movies/:id", controller: "movies", action: "destroy"
  end
end
